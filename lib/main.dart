import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/home.dart';
import 'package:flutter_application_2/screen/message.dart';
import 'package:flutter_application_2/service/notificacion.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await notificaccion.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    notificaccion.messageStream.listen((message) {
      print('Mi aplicaccion $message');
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material app',
      initialRoute: 'home',
      routes: {'home': (_) => home(), 'message': (_) => message()},
    );
  }
}
