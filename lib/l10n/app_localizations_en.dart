// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'CropGuard AI';

  @override
  String get welcomeFarmer => 'Welcome, Farmer!';

  @override
  String get welcomeSubtitle => 'Protect your crops with AI-powered insights.';

  @override
  String get heroTitle => 'Your crops, our care.';

  @override
  String get heroSubtitle =>
      'Detect crop diseases early and monitor potential pest risks.';

  @override
  String get farmDashboard => 'Farm Dashboard';

  @override
  String get earlyDetectionTitle => 'Early Disease Detection & Management';

  @override
  String get earlyDetectionSub => 'Detect early, act fast';

  @override
  String get diseaseScan => 'Disease Scan';

  @override
  String get diseaseScanSub => 'Check a leaf';

  @override
  String get weatherRisk => 'Weather Risk';

  @override
  String get weatherRiskSub => 'Monitor conditions';

  @override
  String get reports => 'Reports';

  @override
  String get reportsSub => 'View past reports';

  @override
  String get smartTipTitle => 'Smart Farming Tip';

  @override
  String get smartTipBody =>
      'Monitor your crops regularly. Changes in weather and humidity can increase the risk of certain crop diseases.';

  @override
  String get pickFromGallery => 'Pick from Gallery';

  @override
  String get takePhoto => 'Take Photo';

  @override
  String get result => 'Result';

  @override
  String get language => 'Language';
}
