import 'package:flutter/material.dart';

//12 STACK DAN ALIGN

// STACK
// kalo di photoshop digunakan untuk layer 
// layer 1 = background 
// layer 2 = text anggota kelas 
// layer 3 = button 

//ALIGN
//biasalah ky kuliah

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
            title: Text('Latihan Stack'),
          ),
          body: Stack(children: <Widget>[
            Container(
              color: Colors.blueGrey,
            ),
            Padding(
              padding: EdgeInsets.all(19),
              child: ListView(children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Text(
                          "CURHAT DONG NGAB",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          "MI2C",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        )
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Ajeng Eka Y \n Ardhanika MRH \n Ayu Ariesta \n Brian Andri \n Destiara \n Dewi Okta \n Dika Ayu \n Dinda Jinggan \n Dyah Ayu \n \n Elsa Aprilia \n Erni Sri \n Falya Charismtul \n Ferika Asmara \n \n --JAYA MAHENDRA-- \n \n Lilik Nurwati \n Abdush Shidqi \n Luthfi R \n Masykur W \n NIo Dyah \n Osy Krisdayanti \n\n Rasyida K \n Syalwa N \n Tia W \n Yayang Nirmala N S \n Yuni R \n Zamrony",
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ]),
            ),
            Align(

              // custom
              // x = vertikal y = horizontal 
              // dimulai dari -1 0 1 . coba ae ngab custom sendiri
              alignment: Alignment(0, 0.9),
              // alignment: Alignment.bottomCenter,
                child:
                    RaisedButton(onPressed: () {}, child: Text("My Button"))),
          ])),
    );
  }
}
