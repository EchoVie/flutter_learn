import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/page_content.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContent(
      title: '首页',
      child: TextButton(
        child: const Text('注册'),
        onPressed: () {
          Navigator.pushNamed(context, '/register');
        },
      )
    );
  }
}
