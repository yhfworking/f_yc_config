import 'dart:async';
import 'package:event_bus/event_bus.dart';

typedef EventCallback<T> = void Function(T event);
final EventBus _eventBus = EventBus();

class YcEvents {
  static StreamSubscription on<T>(EventCallback<T> callback) {
    StreamSubscription stream = _eventBus.on<T>().listen((event) {
      callback(event);
    });
    return stream;
  }

  static void emit(event) {
    _eventBus.fire(event);
  }

  static void off(StreamSubscription steam) {
    steam.cancel();
  }
}
