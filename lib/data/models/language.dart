import 'package:cine_world/generated/l10n.dart';

class Language {
  final String languageCode;
  final String name;
  final String flag; //assets

  Language({
    required this.languageCode,
    required this.name,
    required this.flag,
  });

  static Language findByCode(String code) =>
      languages.firstWhere((element) => element.languageCode == code,
          orElse: () => languages.first);

  static List<Language> get languages => [
        Language(
            languageCode: 'en',
            name: S.current.english,
            flag: 'assets/images/US.png'),
        Language(
            languageCode: 'vi',
            name: S.current.vietnamese,
            flag: 'assets/images/VN.png'),
        Language(
            languageCode: 'zh',
            name: S.current.chinese,
            flag: 'assets/images/CN.png'),
        Language(
            languageCode: 'ko',
            name: S.current.korean,
            flag: 'assets/images/KR.png'),
        Language(
            languageCode: 'es',
            name: S.current.spanish,
            flag: 'assets/images/ES.png'),
        Language(
            languageCode: 'th',
            name: S.current.thai,
            flag: 'assets/images/TH.png'),
      ];
}
