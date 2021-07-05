import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'splash_screen.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.white,
            leading: Icon(Icons.menu, color: Colors.black),
            actions: [
              Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(CupertinoIcons.person_alt_circle_fill,
                      color: Colors.green[700]))
            ]),
        body: Container(
          padding: EdgeInsets.all(20),
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, right: 80, bottom: 20),
                child: Text(
                  "Explore \nthe Earth",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 60,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[200],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Icon(Icons.search_off_rounded),
                          Text(
                            "Search",
                            style: TextStyle(
                                fontFamily: 'assets/fonts/Poppins-Light.ttf'),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Menu1("Mountain"),
                    Menu1("Sea"),
                    Menu1("Forest"),
                    Menu1("Dessert"),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Gambar('assets/images/mountainV1.jpg'),
                    Gambar('assets/images/mountainV2.jpg'),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Menu2(Icons.golf_course),
                          Menu2(Icons.bike_scooter),
                          Menu2(Icons.question_answer),
                          Menu2(Icons.power)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
        ));
  }

  Container Menu2(IconData icon) {
    return Container(
      height: 50,
      width: 50,
      color: Colors.grey[200],
      child: Icon(
        icon,
        color: Colors.green[900],
      ),
    );
  }

  Container Gambar(String img) {
    return Container(
        padding: EdgeInsets.all(20),
        height: 200,
        width: 300,
        child: Image(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ));
  }

  TextButton Menu1(String data) {
    return TextButton(
      child: Text(
        data,
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    );
  }
}
