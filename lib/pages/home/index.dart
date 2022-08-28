import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/page_content.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageContent(
      title: '首页',
      child: TextButton(
        child: const Text('登录'),
        onPressed: () {
          Navigator.pushNamed(context, '/login');
        },
      )
    );
  }
}
           