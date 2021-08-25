import 'package:bytebank/newTransference.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: TransferenceList()
    );
  }
}

class TransferenceList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('100.0'),
              subtitle: Text('1000'),
            ),
          ),Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('200.0'),
              subtitle: Text('1000'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context) => CreateTransference()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent[700],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


