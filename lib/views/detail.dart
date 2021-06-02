import 'package:fliper/app/utils/color_utils.dart';
import 'package:fliper/components/widgets/card_summary.dart';
import 'package:flutter/material.dart';

class Detail extends StatefulWidget {
  const Detail({Key key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: ColorUtils.fromHex('#E7EBF5'),
        body: Stack(
          children: [Center(child: CardSummary())], //TODO: future builder
        ));
  }
}
