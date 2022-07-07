import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashscreen(),
    );
  }
}



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
        ()=> Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context)=>SplashScreen()),
        ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color:Colors.white,
      child:FlutterLogo(size:MediaQuery.of(context).size.height),
    );
  }
}

class splashscreen extends StatelessWidget {
  const splashscreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: secondscreen(),
      title: Text("Splash Screen"),
      loadingText: Text("Loading"),
      loaderColor: Colors.blue,
    );
  }
}

class secondscreen extends StatelessWidget {
  const secondscreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("splash screen"),
      ),
    );
  }
}



