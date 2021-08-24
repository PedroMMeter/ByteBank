import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateTransference extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Criando Transferências')),
      body: Container (
        margin: EdgeInsets.all(15),
        child:
        Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Número da conta'),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    FontAwesomeIcons.dollarSign,
                    color: Colors.white,
                  ),
                ),
                Expanded(
                  child:
                  TextFormField (
                    decoration: InputDecoration(labelText: 'Valor'),
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
              ],
            ),
          ],),
      ),
    );
  }
}