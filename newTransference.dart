import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateTransference extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Criando Transferências')),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Número da conta',
                hintText: '0000',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.monetization_on, size: 26,),
                labelText: 'Valor',
                hintText: '0.00',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Center(
              child: Container(
                height: 45,
                margin: EdgeInsets.only(top: 10.0),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),

                  onPressed: () {},
                  child: const Text(
                      "Confirmar",
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
