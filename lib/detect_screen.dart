import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:image/image.dart' as img;
import 'package:image_picker/image_picker.dart';
import 'package:tflite_flutter/tflite_flutter.dart';

import 'disease_info.dart';
import 'disease_info_more.dart';

class DetectScreen extends StatefulWidget {
  const DetectScreen({super.key});

  @override
  State<DetectScreen> createState() => _DetectScreenState();
}

class _DetectScreenState extends State<DetectScreen> {
  final ImagePicker _picker = ImagePicker();
  Interpreter? _interpreter;
  List<String> _labels = [];
  File? _image;
  String _result = 'Loading AI model...';
  String _confidence = '';
  DiseaseInfo? _info;
  bool _infoMissing = false;
  bool _busy = false;

  @override
  void initState() {
    super.initState();
    _loadModel();
  }

  Future<void> _loadModel() async {
    try {
      _interpreter = await Interpreter.fromAsset('assets/model.tflite');
      final raw = await rootBundle.loadString('assets/labels.txt');
      _labels = raw
          .split('\n')
          .map((l) => l.trim())
          .where((l) => l.isNotEmpty)
          .toList();
      if (mounted) {
        setState(() => _result = 'Pick a leaf photo to start');
      }
    } catch (e) {
      if (mounted) setState(() => _result = 'Model load failed: $e');
    }
  }

  String _pretty(String label) {
    return label
        .replaceAll('___', ' - ')
        .replaceAll('__', ' - ')
        .replaceAll('_', ' ');
  }

  Future<void> _classify(File file) async {
    final interpreter = _interpreter;
    if (interpreter == null || _labels.isEmpty) {
      setState(() => _result = 'Model is not ready yet');
      return;
    }
    setState(() {
      _busy = true;
      _result = 'Scanning...';
      _confidence = '';
      _info = null;
      _infoMissing = false;
    });
    try {
      final bytes = await file.readAsBytes();
      var decoded = img.decodeImage(bytes);
      if (decoded == null) {
        setState(() {
          _busy = false;
          _result = 'Could not read this image';
        });
        return;
      }
      decoded = img.bakeOrientation(decoded);
      final resized = img.copyResize(decoded, width: 224, height: 224);

      final input = List.generate(
        1,
        (_) => List.generate(
          224,
          (y) => List.generate(224, (x) {
            final p = resized.getPixel(x, y);
            return [
              p.r / 127.5 - 1.0,
              p.g / 127.5 - 1.0,
              p.b / 127.5 - 1.0,
            ];
          }),
        ),
      );
      final output = List.generate(
        1,
        (_) => List.filled(_labels.length, 0.0),
      );

      interpreter.run(input, output);

      final scores = output[0];
      var best = 0;
      for (var i = 1; i < scores.length; i++) {
        if (scores[i] > scores[best]) best = i;
      }
      final pct = scores[best] * 100;
      final rawLabel = _labels[best];

      setState(() {
        _busy = false;
        if (pct < 60) {
          _result = 'Not sure. Try a clearer, closer leaf photo.';
          _confidence = 'Best guess: ${_pretty(rawLabel)} '
              '(${pct.toStringAsFixed(1)}%)';
        } else {
          _result = _pretty(rawLabel);
          _confidence = '${pct.toStringAsFixed(1)}% sure';
          _info = diseaseInfo[rawLabel] ?? diseaseInfoMore[rawLabel];
          _infoMissing = _info == null;
        }
      });
    } catch (e) {
      setState(() {
        _busy = false;
        _result = 'Scan failed: $e';
      });
    }
  }

  Future<void> _pick(ImageSource source) async {
    final XFile? picked = await _picker.pickImage(source: source);
    if (picked == null) return;
    final file = File(picked.path);
    setState(() => _image = file);
    await _classify(file);
  }

  @override
  void dispose() {
    _interpreter?.close();
    super.dispose();
  }

  Widget _section(String title, String text, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 20, color: Colors.green.shade800),
              const SizedBox(width: 8),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 4),
          Text(text, style: const TextStyle(fontSize: 15, height: 1.4)),
        ],
      ),
    );
  }

  Widget _infoCard() {
    final info = _info;
    if (info != null) {
      return Card(
        margin: const EdgeInsets.only(top: 16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _section('How it occurs', info.cause, Icons.bug_report),
              _section('Symptoms', info.symptoms, Icons.visibility),
              _section('Prevention', info.prevention, Icons.shield),
              _section('Treatment', info.treatment, Icons.healing),
              const Divider(),
              const Text(
                'This is general guidance. Before spraying, confirm with '
                'your local agriculture officer or Krishi Vigyan Kendra '
                'and follow the product label.',
                style: TextStyle(fontSize: 12, color: Colors.black54),
              ),
            ],
          ),
        ),
      );
    }
    if (_infoMissing) {
      return const Card(
        margin: EdgeInsets.only(top: 16),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            'Detailed information for this disease is coming soon. '
            'Please check with your local agriculture officer.',
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Disease Scan')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 260,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: _image == null
                          ? const Center(child: Text('No image selected'))
                          : ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.file(
                                _image!,
                                fit: BoxFit.cover,
                              ),
                            ),
                    ),
                    const SizedBox(height: 16),
                    if (_busy) const LinearProgressIndicator(),
                    const SizedBox(height: 8),
                    Text(
                      _result,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    if (_confidence.isNotEmpty)
                      Text(
                        _confidence,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    _infoCard(),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed:
                        _busy ? null : () => _pick(ImageSource.camera),
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Camera'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed:
                        _busy ? null : () => _pick(ImageSource.gallery),
                    icon: const Icon(Icons.photo),
                    label: const Text('Gallery'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}