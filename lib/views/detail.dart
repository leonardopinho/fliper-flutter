import 'package:fliper/app/utils/color_utils.dart';
import 'package:fliper/app/utils/helper.dart';
import 'package:fliper/providers/wealth_summary_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detail extends StatefulWidget {
  const Detail({Key key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<WealthSummaryProvider>(context).fetchData();
    print(appState);
    return Scaffold(
        backgroundColor: ColorUtils.fromHex('#E7EBF5'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: Helper.getDeviceWidth(context),
                height: 400,
                color: Colors.red,
              ),
            )
          ],
        ));
  }
}
