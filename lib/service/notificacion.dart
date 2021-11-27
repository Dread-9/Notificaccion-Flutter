import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

// sha1:94:60:B5:B0:01:CF:31:08:05:D4:0C:62:82:57:3F:6D:F9:B2:0F:9B
//token dispositivo : dkb_YXHsT1mDC1R0E7dTLJ:APA91bG3IIYuQojrokaZuY5V9dha4Gav5WUapbKVwsZm3Ab4_MmajIL9X4I6_Q8ezmFUzqQx0Js105g5zS23jRb3C6eky1JdIz-nQvjVFR6NoVYTD2VQulItRUh4TW4NKOlopsmo1r9n

class notificaccion {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static StreamController<String> _messageStream =
      new StreamController.broadcast();

  static Stream<String> get messageStream => _messageStream.stream;

  static Future _backgraundHandler(RemoteMessage message) async {
    //print('background Handler ${message.messageId}');
    print(message.data);
    //_messageStream.add(message.notification?.title ?? 'No trae titulo');
    _messageStream.add(message.notification?.body ?? 'No trae body');
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    //print('onMessaged Handler ${message.messageId}');
    print(message.data);
    //_messageStream.add(message.notification?.title ?? 'No trae titulo');
    _messageStream.add(message.notification?.body ?? 'No trae body');
  }

  static Future _onMessageOpenApp(RemoteMessage message) async {
    //print('onOpenMessageOpenApp ${message.messageId}');
    print(message.data);
    //_messageStream.add(message.notification?.title ?? 'No trae titulo');
    _messageStream.add(message.notification?.body ?? 'No trae body');
  }

  static Future initializeApp() async {
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token :$token');

    FirebaseMessaging.onBackgroundMessage(_backgraundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);
  }

  static CloseStreams() {
    _messageStream.close();
  }
}
