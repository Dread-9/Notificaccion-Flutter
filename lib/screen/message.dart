import 'package:flutter/material.dart';

class message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('message'),
      ),
      body: const Center(
        child: Text(''),
      ),
    );
  }
}
