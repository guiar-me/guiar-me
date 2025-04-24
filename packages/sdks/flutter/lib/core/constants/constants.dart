import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  static String appName = dotenv.get('APP_NAME');

  static String appPackageName = dotenv.get('APP_PACKAGE_NAME');

  static String apiBaseUrl = dotenv.get('API_BASE_URL');

  static String authorizationTokenKey = dotenv.get('AUTHORIZATION_TOKEN_KEY');
}
