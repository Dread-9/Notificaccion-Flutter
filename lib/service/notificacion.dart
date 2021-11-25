import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

//94:60:B5:B0:01:CF:31:08:05:D4:0C:62:82:57:3F:6D:F9:B2:0F:9B

class notificaccion {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;

  static Future initializeApp() async {
    await Firebase.initializeApp();
    token = await FirebaseMessaging.instance.getToken();
    print('Token :$token');
  }
}
