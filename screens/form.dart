import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transference.dart';
import 'package:flutter/material.dart';

const _appBarTitle = 'Criando Tranferência';
const _valueLabel = 'Valor';
const _valueHint = '0.00';
const _accountLabel = 'Número da Conta';
const _accountHint = '0000';
const _confirmText = 'Confirmar';

class TransferenceForm extends StatefulWidget {
  @override
  _TransferenceFormState createState() => _TransferenceFormState();
}

class _TransferenceFormState extends State<TransferenceForm> {
  final _accountController = TextEditingController();

  final _valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitle),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              _accountController,
              _accountLabel,
              _accountHint,
            ),
            Editor(
              _valueController,
              _valueLabel,
              _valueHint,
              icon: Icons.monetization_on,
            ),
            Center(
              child: Container(
                height: 40,
                margin: EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  child: const Text(
                    _confirmText,
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () => _createTransference(context),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _createTransference(BuildContext context) {
    final accountNumber = int.tryParse(_accountController.text);
    final value = double.tryParse(_valueController.text);

    if (accountNumber != null && value != null) {
      final createdTransference = Transference(value, accountNumber);
      Navigator.pop(context, createdTransference);
    }
  }
}