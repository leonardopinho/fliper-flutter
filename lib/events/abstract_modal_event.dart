import 'package:flutter/cupertino.dart';

abstract class AbstractModalEvent {
  void init();
  void dispose();
  void openModal(BuildContext context);
}
