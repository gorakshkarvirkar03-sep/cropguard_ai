import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'detect_screen.dart';
import 'l10n/app_localizations.dart';
import 'locale_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await localeController.load();
  runApp(const CropGuardApp());
}

class CropGuardApp extends StatelessWidget {
  const CropGuardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: localeController,
      builder: (context, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CropGuard AI',
        locale: localeController.locale,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('hi'),
          Locale('mr'),
        ],
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.green,
          ),
          useMaterial3: true,
        ),
        home: const CropGuardHome(),
      ),
    );
  }
}

class CropGuardHome extends StatelessWidget {
  const CropGuardHome({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      backgroundColor: const Color(0xFFF5F8F2),
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        foregroundColor: Colors.white,
        title: Text(
          t.appTitle,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton<Locale>(
            icon: const Icon(Icons.language),
            tooltip: t.language,
            onSelected: (l) => localeController.setLocale(l),
            itemBuilder: (_) => const [
              PopupMenuItem(value: Locale('en'), child: Text('English')),
              PopupMenuItem(value: Locale('hi'), child: Text('हिन्दी')),
              PopupMenuItem(value: Locale('mr'), child: Text('मराठी')),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${t.welcomeFarmer} \u{1F331}',
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              t.welcomeSubtitle,
              style: const TextStyle(fontSize: 15, color: Colors.black54),
            ),
            const SizedBox(height: 24),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green.shade800,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.agriculture,
                    color: Colors.white,
                    size: 42,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    t.heroTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.heroSubtitle,
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              t.farmDashboard,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 14),
            Row(
              children: [
                Expanded(
                  child: _dashboardCard(
                    Icons.health_and_safety,
                    t.earlyDetectionTitle,
                    t.earlyDetectionSub,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _dashboardCard(
                    Icons.biotech,
                    t.diseaseScan,
                    t.diseaseScanSub,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const DetectScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: _dashboardCard(
                    Icons.cloud,
                    t.weatherRisk,
                    t.weatherRiskSub,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: _dashboardCard(
                    Icons.history,
                    t.reports,
                    t.reportsSub,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Text(
              '${t.smartTipTitle} \u{1F4A1}',
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  t.smartTipBody,
                  style: const TextStyle(fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget _dashboardCard(
    IconData icon,
    String title,
    String subtitle, {
    VoidCallback? onTap,
  }) {
    return Card(
      elevation: 1,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 12,
          ),
          child: Column(
            children: [
              Icon(icon, color: Colors.green.shade800, size: 34),
              const SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                subtitle,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}