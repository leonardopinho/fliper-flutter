import 'package:fliper/app/utils/color_utils.dart';
import 'package:fliper/app/utils/helper.dart';
import 'package:fliper/config/constants.dart';
import 'package:fliper/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);

    SystemChrome.setPreferredOrientations([Constants.deviceOrientation]);

    Future.delayed(Duration(milliseconds: 2500), () {
      Routes.goToDetailPage(context);
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
        width: Helper.getDeviceWidth(context),
        color: ColorUtils.fromHex('#1A2644'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: Helper.getDeviceHeight(context) - 150,
              child: Lottie.asset(
                'assets/json/logo.json',
                controller: controller,
                onLoaded: (composition) {
                  controller
                    ..duration = composition.duration
                    ..forward();
                },
              ),
            ),
          ],
        ));
  }
}
