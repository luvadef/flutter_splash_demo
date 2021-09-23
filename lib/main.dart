import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen with Lottie Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: (5)),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    Timer(
            const Duration(seconds: 4),
                () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => HomePage())));

    return Scaffold(
      backgroundColor: Colors.white,
      body: Image.asset('assets/animation_640_ktw7qr2e.gif',
      height: MediaQuery.of(context).size.height * 1,
      fit: BoxFit.fitWidth
      
      ),
      
      // body: Lottie.asset(
      //   'assets/animation_ktw70fgd.json',
      //   controller: _controller,
      //   height: MediaQuery.of(context).size.height * 1,
      //   animate: true,
      //   onLoaded: (composition) {
      //     _controller
      //       ..duration = composition.duration
      //       ..forward().whenComplete(() => Navigator.pushReplacement(
      //             context,
      //             MaterialPageRoute(builder: (context) => HomePage()),
      //           ));
      //   },
      // ), 
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Homepage')),
    );
  }
}