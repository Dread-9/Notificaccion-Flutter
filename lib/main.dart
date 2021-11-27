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
  GlobalKey<NavigatorState> navigator = new GlobalKey<NavigatorState>();
  @override
  void initState() {
    super.initState();
    notificaccion.messageStream.listen((data) {
      print(data);
      navigator.currentState!.pushNamed('message', arguments: data);
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigator,
      title: 'Material app',
      initialRoute: 'home',
      routes: {'home': (_) => home(), 'message': (_) => message()},
    );
  }
}
