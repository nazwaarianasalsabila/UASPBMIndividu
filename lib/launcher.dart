import 'dart:async';

import 'package:demo/users/login.dart';
import 'package:flutter/material.dart';
import 'package:demo/constans.dart';
import 'package:demo/users/landingpage.dart' as users;

class LauncherPage extends StatefulWidget {
  @override
  _LauncherPageState createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 4);
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.pink.shade200, offset: Offset(2, 4), blurRadius: 5, spreadRadius: 2)
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Palette.bg1, Palette.bg2],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: new Image.asset(
                "assets/launching.png",
                height: 200.0,
                width: 500.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
