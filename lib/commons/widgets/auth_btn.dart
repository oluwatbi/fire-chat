// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String title;

  const AuthButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(fontSize: 15),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(311, 65),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        primary: Colors.grey[900],
      ),
    );
  }
}
