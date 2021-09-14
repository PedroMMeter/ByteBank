import 'package:bytebank/models/transference.dart';
import 'package:flutter/material.dart';
import 'form.dart';

class TransferenceList extends StatefulWidget {
  final List<Transference> _lTransference = [];

  @override
  State<StatefulWidget> createState() {
    return TransferenceListState();
  }
}

class TransferenceListState extends State<TransferenceList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transferências")),
      body: ListView.builder(
        itemCount: widget._lTransference.length,
        itemBuilder: (context, index) {
          final transference = widget._lTransference[index];
          return TransferenceItem(transference);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          final Future<Transference?> future =
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return TransferenceForm();
          }));
          future.then((recievedTransference) {
            Future.delayed(Duration(milliseconds: 700), () {
              setState(() {
                widget._lTransference.add(recievedTransference!);
              });
            });
          });
        },
      ),
    );
  }
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