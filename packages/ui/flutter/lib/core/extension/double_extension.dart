import 'package:intl/intl.dart';

extension DoubleExtension on double {
  // TODO: Use format based on the locale
  // for example, in pt_BR, we need to use 'R\$' and in en_US, we need to use '\$'
  String parseToMoney() {
    NumberFormat currencyFormat = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: 'R\$',
    );

    return currencyFormat.format(this);
  }
}
