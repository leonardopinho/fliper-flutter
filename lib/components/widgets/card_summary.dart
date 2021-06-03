import 'dart:async';

import 'package:fliper/app/core/events/event.dart';
import 'package:fliper/app/core/extensions/double.dart';
import 'package:fliper/app/utils/color_utils.dart';
import 'package:fliper/app/utils/helper.dart';
import 'package:fliper/events/modal_event.dart';
import 'package:fliper/models/wealth_summary.dart';
import 'package:fliper/providers/wealth_summary_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardSummary extends StatefulWidget {
  const CardSummary({Key key}) : super(key: key);

  @override
  _CardSummaryState createState() => _CardSummaryState();
}

class _CardSummaryState extends State<CardSummary> {
  Event _event;

  @override
  void initState() {
    _event = Event.instance;
    super.initState();
  }

  @override
  void dispose() {
    _event = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<WealthSummaryProvider>(context).fetchData();
    return Consumer<WealthSummaryProvider>(
      builder: (context, snapshot, child) {
        return snapshot.data != null
            ? Container(
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
                            offset: const Offset(17, 0),
                            child: PopupMenuButton(
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.black.withOpacity(0.4),
                              ),
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    value: 1,
                                    child: Row(
                                      children: [IconButton(icon: Icon(Icons.info_outline, color: ColorUtils.fromHex('#2461B3')), onPressed: null), Text('Sobre', style: TextStyle(fontSize: 14, color: Colors.black.withOpacity(0.7)))],
                                    ),
                                  )
                                ];
                              },
                              onSelected: (value) {
                                if (value == 1) {
                                  _event.dispatchEvent(Modal.SHOW, value: context);
                                }
                              },
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
                            snapshot.data.total.ToBrl(),
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Metropolis',
                              fontWeight: FontWeight.w800,
                              color: ColorUtils.fromHex('#2461B3'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 15, 0, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Rentabilidade/mês', style: TextStyle(fontSize: 14, fontFamily: 'Metropolis', fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7), letterSpacing: 0.3)),
                              Text(
                                '${snapshot.data.profitability.toPrecision(3)}%',
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
                                '${snapshot.data.cdi.toPrecision(2)}%',
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
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Ganho/mês', style: TextStyle(fontSize: 14, fontFamily: 'Metropolis', fontWeight: FontWeight.w500, color: Colors.black.withOpacity(0.7), letterSpacing: 0.3)),
                              Text(
                                snapshot.data.gain.ToBrl(),
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
                              width: 95,
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
                ]))
            : Container();
      },
    );
  }
}
