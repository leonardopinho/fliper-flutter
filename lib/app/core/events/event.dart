import 'abstract_event.dart';

enum EventType { INIT }

class Event extends AbstractEvent {
  final List<EventItem> _listeners = <EventItem>[];

  Event._privateConstructor();

  static final Event _instance = Event._privateConstructor();

  static Event get instance => _instance;

  @override
  void addEventListener(dynamic state, Function function) {
    _listeners.add(EventItem(state, function));
  }

  @override
  void removeEventListener(dynamic state) {
    _listeners.removeWhere((item) => item.state == state);
  }

  @override
  void dispatchEvent(dynamic state, {dynamic value}) {
    _listeners.forEach((item) {
      if (item.state == state) {
        value != null ? item.function(value) : item.function();
      }
    });
  }
}

class EventItem {
  final dynamic state;
  final Function function;

  EventItem(this.state, this.function);
}
