import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/home.dart';
import 'package:flutter_application_2/screen/message.dart';
import 'package:flutter_application_2/service/notificacion.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await notificaccion.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      initialRoute: 'home',
      routes: {'home': (_) => home(), 'message': (_) => message()},
    );
  }
}
