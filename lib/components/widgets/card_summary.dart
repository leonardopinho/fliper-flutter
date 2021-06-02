import 'package:fliper/app/utils/color_utils.dart';
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
      width: 320,
      height: 325,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 0.5,
            offset: Offset(1, 1),
          ),
        ],
      ),
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 20, 20, 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Seu resumo',
                style: TextStyle(
                  fontSize: 23,
                  fontFamily: 'Metropolis',
                  fontWeight: FontWeight.w800,
                  color: ColorUtils.fromHex('#2461B3'),
                ),
              ),
              Container(
                child: Transform.translate(
                  offset: const Offset(15, 0),
                  child: PopupMenuButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.black.withOpacity(0.4),
                    ),
                    itemBuilder: (BuildContext context) {
                      return [
                        // PopupMenuItem(
                        //   value: 1,
                        //   child: Text("Recarregar", style: TextStyle(fontSize: 16, color: Colors.grey)),
                        // ),
                      ];
                    },
                    onSelected: (value) {},
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
          child: Column(
            children: [
              Text('Valor investido', style: TextStyle(fontSize: 14, fontFamily: 'Metropolis', fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7), letterSpacing: 0.3)),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  r'R$ 3.200.876,00',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w800,
                    color: ColorUtils.fromHex('#2461B3'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 32, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Rentabilidade/mês', style: TextStyle(fontSize: 14, fontFamily: 'Metropolis', fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7), letterSpacing: 0.3)),
                    Text(
                      r'2,767%',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w800,
                        color: ColorUtils.fromHex('#2461B3'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('CDI', style: TextStyle(fontSize: 14, fontFamily: 'Metropolis', fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7), letterSpacing: 0.3)),
                    Text(
                      r'2,767%',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w800,
                        color: ColorUtils.fromHex('#2461B3'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Ganho/mês', style: TextStyle(fontSize: 14, fontFamily: 'Metropolis', fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7), letterSpacing: 0.3)),
                    Text(
                      r'2,767%',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Metropolis',
                        fontWeight: FontWeight.w800,
                        color: ColorUtils.fromHex('#2461B3'),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(thickness: 1, color: Colors.black.withOpacity(0.2)),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    width: 85,
                    height: 31,
                    padding: const EdgeInsets.only(top: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: ColorUtils.fromHex('#2461B3')),
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    child: Center(
                      child: Text(
                        'Ver Mais'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w800,
                          color: ColorUtils.fromHex('#2461B3'),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}
