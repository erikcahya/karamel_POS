import 'package:explore_pos_karamel/login/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CaramelPos());
}

class CaramelPos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
