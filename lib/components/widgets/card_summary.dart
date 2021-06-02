import 'package:fliper/app/utils/helper.dart';
import 'package:fliper/providers/wealth_summary_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardSummary extends StatefulWidget {
  const CardSummary({Key key}) : super(key: key);

  @override
  _CardSummaryState createState() => _CardSummaryState();
}

class _CardSummaryState extends State<CardSummary> {
  @override
  Widget build(BuildContext context) {
    final cardState = Provider.of<WealthSummaryProvider>(context).fetchData();
    print(cardState);

    return Container(
      margin: const EdgeInsets.all(18.0),
      height: 340,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 0.5,
            offset: Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
    );
  }
}
