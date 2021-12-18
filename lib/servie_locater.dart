import 'package:flutter_tts/flutter_tts.dart';
import 'package:get_it/get_it.dart';
import 'package:korean_language_learning_app/util/constant.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerSingleton<AlphabetType>(AlphabetType());
  getIt.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());
  getIt.registerSingleton<FlutterTts>(FlutterTts());
}
