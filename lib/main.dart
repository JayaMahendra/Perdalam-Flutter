import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Latihan ListView"),
            ),
            body: ListView(
               children: <Widget>[
                 Container(
                   padding: EdgeInsets.only(top: 20),
                   child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RaisedButton(
                    child: Text('Tambah Data'),
                    onPressed: () {
                      setState(() {
                        widgets.add(Text(
                          "Data" + counter.toString(),
                          style: TextStyle(fontSize: 35),
                        ));
                        counter++;
                      });
                    },
                  ),
                  RaisedButton(
                      child: Text("Hapus Data"),
                      onPressed: () {
                        setState(() {
                          widgets.removeLast();
                          counter--;
                        });
                      }),
                ],
              ),

                 ),
              
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: widgets,
                ),
              ]))
    );
  }
}
