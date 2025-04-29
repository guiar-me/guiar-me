import 'package:flutter_dotenv/flutter_dotenv.dart';

class ConstantsForTest {
  static String get userEmail => dotenv.get('USER_EMAIL');

  static String get userPassword => dotenv.get('USER_PASSWORD');
}
