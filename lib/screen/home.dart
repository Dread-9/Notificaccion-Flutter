import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/message.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
      ),
      body: Center(
        child: RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            child: Text("Mensajes actuales"),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => message()));
            }),
      ),
    );
  }
}
