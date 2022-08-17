// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'package:fire_chat/commons/widgets/black_btn.dart';
import 'package:fire_chat/authenticate/login.dart';
import 'package:fire_chat/authenticate/register.dart';
import 'package:fire_chat/services/auth.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final Auth _auth = Auth();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/auth/welcome.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              BlackButton(
                  title: 'Login',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  }),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Register()));
                },
                child: Text("Register",
                    style:
                        TextStyle(color: Colors.black, fontFamily: 'Urbanist')),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(331, 65),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  onPrimary: Colors.grey,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30),
                child: TextButton(
                  onPressed: () async {
                    dynamic result = await _auth.signInAnonymously();
                    if (result == null) {
                      SnackBar(
                        content: Text("Error signing in anonymously"),
                        backgroundColor: Colors.red,
                      );
                    } else {
                      SnackBar(
                        content: Text("Signed in anonymously"),
                        backgroundColor: Colors.green,
                      );
                      print('signed in');
                      print(result.uid);
                    }
                  },
                  child: Text(
                    "Login as a guest",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Urbanist',
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
