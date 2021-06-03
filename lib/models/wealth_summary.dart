import 'package:flutter/widgets.dart';

class WealthSummary {
  int id;
  double cdi;
  double gain;
  bool hasHistory;
  double profitability;
  double total;

  WealthSummary();

  WealthSummary.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        cdi = json['cdi'].toDouble(),
        gain = json['gain'].toDouble(),
        hasHistory = json['hasHistory'],
        profitability = json['profitability'].toDouble(),
        total = json['total'].toDouble();

  @override
  String toString() {
    return 'WealthSummary{id: $id, cdi: $cdi, gain: $gain, hasHistory: $hasHistory, profitability: $profitability, total: $total}';
  }
}
