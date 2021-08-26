//import 'package:bytebank/newTransference.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TransferenceList());
}

class Bytebank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: TransferenceForm(),
    ));
  }
}

class TransferenceForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
      ),
      body: Text('Teste'),
    );
  }
}

class TransferenceList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Transferências")),
        body: Column(
          children: [
            TransferenceItem(Transference(100.07, 1234)),
            TransferenceItem(Transference(300.08, 1444)),
            TransferenceItem(Transference(150.05, 2234)),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Increment',
          child: Icon(Icons.add),
          backgroundColor: Colors.blueAccent[700],
        ),
      ),
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
