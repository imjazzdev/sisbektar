import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sibektar/presentation/daftar/signup.dart';
import 'home.dart';
import 'signin.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  Timer? _timer;

  int _start = 1;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => SignIn(),
                ));
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: ListView(
        padding: EdgeInsets.all(25),
        children: [
          SizedBox(
            height: 100,
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/logo-AAL-no-bg.png',
                height: 250,
                width: 250,
                fit: BoxFit.contain,
              )),
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'SISBEKTAR',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Sistem Bekal Taruna',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Container(
              alignment: Alignment.center,
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                color: Colors.white,
              )),
          SizedBox(
            height: 100,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Sistem informasi pembekalan taruna\n(v.1)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
