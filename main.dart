import 'package:flutter/material.dart';
import 'package:bytebank/screens/list.dart';

void main() => runApp(Bytebank());

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blueGrey[900],
          accentColor: Colors.blueGrey[700],
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.blueGrey[700],
            ),
          ),
        ),
        home: Scaffold(
          body: TransferenceList(),
        ));
  }
}




