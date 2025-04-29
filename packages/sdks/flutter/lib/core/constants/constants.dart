import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static String get appName => dotenv.get('APP_NAME');

  static String get appPackageName => dotenv.get('APP_PACKAGE_NAME');

  static String get apiBaseUrl => dotenv.get('API_BASE_URL');

  static String get authorizationTokenKey =>
      dotenv.get('AUTHORIZATION_TOKEN_KEY');
}
