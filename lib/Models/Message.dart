import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  Message({super.key, required this.message});

  String message;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      message,
      style: const TextStyle(fontSize: 23, color: Colors.black),
    ));
  }
}
