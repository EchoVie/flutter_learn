import 'package:flutter/material.dart';

class User extends StatefulWidget {
  const User({Key? key}) : super(key: key);

  @override
  State createState() {
    return UserState();
  }
}

class UserState extends State<User> {
  UserState() {}

  @override
  Widget build(BuildContext context) {
    return Text('user');
  }
}
