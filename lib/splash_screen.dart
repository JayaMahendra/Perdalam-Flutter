import 'package:flutter/material.dart';
import 'package:tracking_apss/main_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            height: 800,
            width: 700,
            child: Image(
                image: AssetImage('assets/images/mountainV333.png'),
                fit: BoxFit.cover)),
        Container(
          padding: EdgeInsets.only(top: 400, bottom: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Explore the Earth",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Text(
                    "\t\t\t Whoever loves and understands \n a garden will find contentment within",
                    style: TextStyle(fontSize: 20, color: Colors.white60)),
                RaisedButton(
                    onPressed: ()
                        // => Navigator.pushNamed(context, '/main_page'),
                        {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainPage()));
                    },
                    child: Text("Next"))
              ],
            ),
          ),
        )
      ]),
    );
  }
}
