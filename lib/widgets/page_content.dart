import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final title;
  final  child;

  const PageContent({Key? key, this.title, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
       body: SafeArea(
        child: child,
      )
    );
  }
}