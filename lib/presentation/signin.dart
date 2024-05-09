import 'dart:async';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sibektar/presentation/daftar/signup.dart';

import '../utils/utils.dart';
import 'home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  var noAkademik = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  bool loading = false;
  bool visiblePwd = true;

  Timer? _timer;

  int _start = 2;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();

            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(
                    no_akademik: noAkademik.text,
                  ),
                ),
                (route) => false);
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
    Utils.getDataUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: EdgeInsets.all(25),
            children: [
              SizedBox(
                height: 100,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/logo-AAL-no-bg.png',
                    height: 200,
                    width: 200,
                    fit: BoxFit.contain,
                  )),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'SISBEKTAR',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Sistem Bekal Taruna',
                  style: TextStyle(
                    fontSize: 23,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: noAkademik,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: 'No. Akademik'),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   decoration: BoxDecoration(
              //       boxShadow: [
              //         BoxShadow(
              //             offset: Offset(1, 2),
              //             color: Colors.blue.withOpacity(0.2),
              //             blurRadius: 5)
              //       ],
              //       borderRadius: BorderRadius.circular(20),
              //       color: Colors.white),
              //   child: Padding(
              //     padding: const EdgeInsets.only(
              //         left: 20, right: 15, top: 5, bottom: 5),
              //     child: TextField(
              //       controller: email,
              //       decoration: InputDecoration(
              //           border: InputBorder.none, hintText: 'Email'),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 2),
                          color: Colors.blue.withOpacity(0.2),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 15, top: 5, bottom: 5),
                  child: TextField(
                    controller: password,
                    obscureText: visiblePwd,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                visiblePwd = !visiblePwd;
                              });
                            },
                            icon: Icon(visiblePwd
                                ? Icons.visibility
                                : Icons.visibility_off)),
                        border: InputBorder.none,
                        hintText: 'Password'),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUp(),
                            ));
                      },
                      child: Text('Sign Up?'))),
              SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () async {
                  var result = Utils.data_user.firstWhere(
                      (data) => data['no_akademik'] == noAkademik.text);
                  if (result['no_akademik'] == noAkademik.text &&
                      result['password'] == password.text) {
                    print('DATA BENAR, USER LOGIN ${result['nama']}');

                    Utils.getDataDiri(noAkademik.text);
                    Utils.getDataKaporlap(noAkademik.text);

                    setState(() {
                      loading = true;
                    });
                    startTimer();
                    // Future.delayed(Duration(seconds: 1), () {

                    // });
                  } else {
                    AwesomeDialog(
                      context: context,
                      dialogType: DialogType.error,
                      animType: AnimType.rightSlide,
                      title: 'Data tidak sesuai, coba lagi!',
                      btnOkOnPress: () {},
                    ).show();
                  }

                  // try {
                  //   // await FirebaseAuth.instance.signInWithEmailAndPassword(
                  //   //     email: email.text, password: password.text);
                  //   Utils.getDataDiri(noAkademik.text);
                  //   Utils.getDataKaporlap(noAkademik.text);

                  //   setState(() {
                  //     loading = true;
                  //   });
                  //   startTimer();
                  //   // Future.delayed(Duration(seconds: 1), () {

                  //   // });
                  // } on FirebaseAuthException catch (e) {
                  //   if (e.code == 'wrong-password') {
                  //     setState(() {
                  //       AwesomeDialog(
                  //         context: context,
                  //         animType: AnimType.scale,
                  //         dialogType: DialogType.warning,
                  //         title: 'Email & password incorrect. Please try again',
                  //         btnOkOnPress: () {},
                  //       ).show();

                  //       email.clear();
                  //       password.clear();
                  //     });
                  //   } else if (e.code == 'user-not-found') {
                  //     setState(() {
                  //       AwesomeDialog(
                  //         context: context,
                  //         animType: AnimType.scale,
                  //         dialogType: DialogType.error,
                  //         title: 'User not found. Try again',
                  //         btnOkOnPress: () {},
                  //       ).show();

                  //       email.clear();
                  //       password.clear();
                  //     });
                  //   }
                  // }
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 50,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 2),
                              color: Colors.blue.withOpacity(0.2),
                              blurRadius: 5)
                        ],
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15, right: 15, top: 5, bottom: 5),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
              ),
            ],
          ),
          loading
              ? SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                    strokeWidth: 7,
                  ))
              : SizedBox()
        ],
      ),
    );
  }
}
