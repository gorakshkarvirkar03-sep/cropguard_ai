// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'क्रॉपगार्ड एआई';

  @override
  String get welcomeFarmer => 'स्वागत है, किसान भाई!';

  @override
  String get welcomeSubtitle => 'एआई की मदद से अपनी फसलों की सुरक्षा करें।';

  @override
  String get heroTitle => 'आपकी फसल, हमारी देखभाल।';

  @override
  String get heroSubtitle =>
      'फसल के रोगों का जल्दी पता लगाएँ और कीटों के संभावित खतरे पर नज़र रखें।';

  @override
  String get farmDashboard => 'खेत डैशबोर्ड';

  @override
  String get earlyDetectionTitle => 'रोग की शीघ्र पहचान और प्रबंधन';

  @override
  String get earlyDetectionSub => 'जल्दी पहचानें, तुरंत कदम उठाएँ';

  @override
  String get diseaseScan => 'रोग स्कैन';

  @override
  String get diseaseScanSub => 'पत्ती की जाँच करें';

  @override
  String get weatherRisk => 'मौसम जोखिम';

  @override
  String get weatherRiskSub => 'परिस्थितियों पर नज़र रखें';

  @override
  String get reports => 'रिपोर्ट';

  @override
  String get reportsSub => 'पिछली रिपोर्ट देखें';

  @override
  String get smartTipTitle => 'स्मार्ट खेती टिप';

  @override
  String get smartTipBody =>
      'अपनी फसलों की नियमित निगरानी करें। मौसम और नमी में बदलाव से कुछ फसल रोगों का खतरा बढ़ सकता है।';

  @override
  String get pickFromGallery => 'गैलरी से चुनें';

  @override
  String get takePhoto => 'फोटो लें';

  @override
  String get result => 'परिणाम';

  @override
  String get language => 'भाषा';
}
