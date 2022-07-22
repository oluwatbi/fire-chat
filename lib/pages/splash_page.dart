// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sort_child_properties_last

import 'package:fire_chat/commons/widgets/auth_btn.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
              AuthButton(
                title: 'login',
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: Text("Register", style: TextStyle(color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(311, 65),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.white,
                  onPrimary: Colors.grey,
                ),
              ),
              SizedBox(height: 94)
            ],
          ),
        ),
      ),
    );
  }
}
