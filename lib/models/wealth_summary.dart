import 'package:flutter/widgets.dart';

class WealthSummary with ChangeNotifier {
  int id;
  double cdi;
  double gain;
  bool hasHistory;
  double profitability;
  double total;

  WealthSummary();
}
