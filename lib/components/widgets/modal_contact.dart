import 'package:fliper/app/utils/color_utils.dart';
import 'package:flutter/material.dart';

class ModalContact extends StatefulWidget {
  const ModalContact({Key key}) : super(key: key);

  @override
  _ModalContactState createState() => _ModalContactState();
}

class _ModalContactState extends State<ModalContact> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                alignment: Alignment.topCenter,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(300.0),
                      child: Container(
                        width: 50,
                        height: 50,
                        child: Image.asset(
                          'assets/imgs/contact.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      margin: EdgeInsets.only(bottom: 13),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 3, color: ColorUtils.fromHex('#2461B3')),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('Leonardo Pinho',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w800,
                          color: ColorUtils.fromHex('#2461B3'),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text('https://github.com/leonardopinho', textAlign: TextAlign.center, style: TextStyle(fontSize: 13, fontFamily: 'Metropolis', fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7))),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
