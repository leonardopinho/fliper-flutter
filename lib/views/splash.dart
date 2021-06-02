import 'package:fliper/app/utils/color_utils.dart';
import 'package:fliper/components/transitions/slide_right_left.dart';
import 'package:fliper/config/constants.dart';
import 'package:fliper/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([Constants.deviceOrientation]);
    Future.delayed(Duration(milliseconds: 3000), () {
      Routes.goToDetailPage(context);
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 150,
        color: ColorUtils.fromHex('#1A2644'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 180,
              height: 180,
              //child: Image.asset('assets/img/logo.png'),
            ),
          ],
        ));
  }
}
