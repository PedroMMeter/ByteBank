import 'package:bytebank/newTransference.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, position) {
            return Card(
              child: Row(children: <Widget>[
                Container(
                  height: 35,
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                  child: Icon(
                    FontAwesomeIcons.dollarSign,
                    color: Colors.white,

                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '100.0',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      '1000',
                      style: TextStyle(color: Colors.black45, fontSize: 14.0),
                    )
                  ],
                )
              ]),
            );
          }),
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


