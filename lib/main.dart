import 'package:flutter/material.dart';
import 'app_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Calcify',
      home: Scaffold(
        body: AppPage(),
      ),
    );
  }
}
