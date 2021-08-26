import 'package:bytebank/newTransference.dart';
import 'package:flutter/material.dart';

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
        home: MainScreen());
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(
        children: [
          TransferenceList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              new MaterialPageRoute(
                  builder: (context) => CreateTransference()));
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent[700],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class TransferenceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransferenceItem(Transference(100.07, 1234)),
        TransferenceItem(Transference(300.08, 1444)),
        TransferenceItem(Transference(150.05, 2234)),
      ],
    );
  }
}

class Transference {
  final double valor;
  final int numeroConta;

  Transference(this.valor, this.numeroConta);
}

class TransferenceItem extends StatelessWidget {
  final Transference _transference;

  TransferenceItem(this._transference);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transference.valor.toString()),
        subtitle: Text(_transference.numeroConta.toString()),
      ),
    );
  }
}
