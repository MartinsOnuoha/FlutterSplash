import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/widgets.dart';

void main() => runApp( MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.indigo, accentColor: Colors.white
  ),
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // Implement Init State
  @override
  void initState() {
      super.initState();
      Timer(Duration(seconds: 5), () => print("Splash done!"));
    }


  // Implement Stateful Widget
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.1, 0.9, 0.9],
                  colors: [
                    Colors.indigo[300],
                    Colors.indigo[400],
                    Colors.white
                  ],
                )
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50.0,
                          child: Icon(
                            Icons.bubble_chart,
                            color: Colors.indigo[300],
                            size: 50.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10.0),
                        ),
                        Text(
                          "SciNote", style: TextStyle(
                            color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold
                          )
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircularProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                    ],
                  ),
                )
              ],
              )
          ],
        )
      );
    }
}

