import 'package:fliper/app/utils/color_utils.dart';
import 'package:fliper/app/utils/helper.dart';
import 'package:fliper/components/widgets/card_summary.dart';
import 'package:fliper/events/modal_event.dart';
import 'package:fliper/providers/wealth_summary_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Detail extends StatefulWidget {
  const Detail({Key key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> with ModalEvent {
  @override
  void initState() {
    super.init();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.fromHex('#E7EBF5'),
      body: Stack(children: [
        Consumer<WealthSummaryProvider>(builder: (context, snapshot, child) {
          return Stack(
            children: [
              AnimatedOpacity(
                duration: Duration(milliseconds: 700),
                opacity: snapshot.data == null ? 1 : 0,
                curve: Curves.easeInOutQuad,
                child: Center(child: CircularProgressIndicator(strokeWidth: 5, backgroundColor: Colors.black.withOpacity(0.2), valueColor: AlwaysStoppedAnimation<Color>(ColorUtils.fromHex('#2461B3')))),
              ),
              AnimatedPositioned(
                duration: Duration(milliseconds: 1300),
                left: snapshot.data != null ? 0 : Helper.getDeviceWidth(context),
                curve: Curves.easeInOutQuint,
                child: Container(
                  width: Helper.getDeviceWidth(context),
                  height: Helper.getDeviceHeight(context),
                  child: Center(child: CardSummary()),
                ),
              )
            ],
          );
        }),
      ]),
    );
  }
}
