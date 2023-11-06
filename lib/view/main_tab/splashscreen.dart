import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'login.dart';

class splashscreen2 extends StatefulWidget {
  @override
  State<splashscreen2> createState() => _splashscreen2State();
}

class _splashscreen2State extends State<splashscreen2> {

  @override //when this fun wiil coll this initstate will call autotmaticl
  void initState() {
    super.initState();
    _navigatehome();
  }
  _navigatehome() async{
    await Future.delayed(Duration(seconds:5), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> regpage()));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/img/download.png"),
            Text("Fitness app",
                style:TextStyle(fontSize:50)
            ),
            SizedBox(height: 50,width:90),
            Text("Made by RECians",
                style:TextStyle(fontSize:20)
            ),
            SpinKitWave(
              color: Colors.black87,
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
