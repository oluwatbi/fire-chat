// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SigninOptions extends StatelessWidget {
  final String description;

  const SigninOptions({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
                height: 36,
              )),
        ),
        Text(description),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Divider(
                color: Colors.grey,
                thickness: 1,
                height: 36,
              )),
        ),
      ]),
      SizedBox(height: 22),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              fixedSize: Size(96, 56),
              primary: Colors.grey[900],
              side: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
            child: Image.asset('assets/images/socials/facebook.png'),
          ),
          SizedBox(width: 20),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              fixedSize: Size(96, 56),
              primary: Colors.grey[900],
              side: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
            child: Image.asset('assets/images/socials/google_ic.png'),
          ),
          SizedBox(width: 20),
          TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              fixedSize: Size(96, 56),
              primary: Colors.white70,
              side: BorderSide(
                color: Colors.grey.shade200,
              ),
            ),
            child: Image.asset('assets/images/socials/apple.png'),
          ),
        ],
      ),
    ]);
  }
}
