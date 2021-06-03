import 'dart:math';
import 'package:intl/intl.dart';

extension Precision on double {
  double toPrecision(int fractionDigits) {
    double mod = pow(10, fractionDigits.toDouble());
    return ((this * mod).round().toDouble() / mod);
  }
}

extension CurrencyFormat on double {
  String ToBrl() {
    return new NumberFormat.currency(locale: 'pt_BR', symbol: r'R$', name: "Real").format(this);
  }
}
