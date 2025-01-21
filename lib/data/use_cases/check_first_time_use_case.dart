import 'package:shared_preferences/shared_preferences.dart';

class CheckFirstTimeUseCase {
  Future<bool> call() async {
    final spf = await SharedPreferences.getInstance();
    final firstTime = spf.getBool('firstTime') ?? true;
    if (firstTime) spf.setBool('firstTime', false);
    return firstTime;
  }
}
