import 'package:intl/intl.dart';

extension DoubleExtension on double {
  String parseToMoney() {
    NumberFormat currencyFormat = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: 'R\$',
    );

    return currencyFormat.format(this);
  }
}
