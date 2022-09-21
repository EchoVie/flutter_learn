import 'package:flutter/material.dart';

class Rent extends StatefulWidget {
  const Rent({Key? key}) : super(key: key);

  @override
  State createState() {
    return RentState();
  }
}

class RentState extends State<Rent> {
  RentState() {}

  @override
  Widget build(BuildContext context) {
    return Text('rent');
  }
}
