import 'package:fliper/app/core/events/event.dart';
import 'package:fliper/app/core/exceptions/app_exception.dart';
import 'package:fliper/components/widgets/modal_contact.dart';
import 'package:flutter/material.dart';

import 'abstract_modal_event.dart';

enum Modal { SHOW, HIDE }

class ModalEvent implements AbstractModalEvent {
  Event event;

  @override
  void init() {
    event = Event.instance;
    event.addEventListener(Modal.SHOW, (value) {
      openModal(value);
    });
  }

  @override
  void dispose() {
    event.removeEventListener(Modal.SHOW);
    event = null;
  }

  @override
  void openModal(BuildContext context) {
    try {
      showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        builder: (ctx) => ModalContact(),
      );
    } on AppException catch (e) {
      throw new AppException('OpenModal: $e');
    }
  }
}
