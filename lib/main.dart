import 'package:flutter/material.dart';

//INI APLIKASI UNTUK MENCOBA FLEXIBLE
//MAKSUTNYA ADALAH KARENA UKURAN SETIAP HP BEDA,
//TIDAK SAMA SEPERTI SAAT NGODING(EMULATOR)
//KALAU TIDAK PERCAYA SAAT RUN SILAHKAN DI ROTATE HPNYA

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layar Flexibel'),
        ),
        body: Column(
          children: <Widget>[
            Flexible(
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.pink,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.blue,
                      )),
                  Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.all(5),
                        color: Colors.green,
                      )),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.grey,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.brown,
                )),
          ],
        ),
      ),
    );
  }
}
