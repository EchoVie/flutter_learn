import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/page_content.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State createState() {
    return LoginState();
  }
}

class LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginState() {}

  @override
  Widget build(BuildContext context) {
    return PageContent(
      title: '登录',
      child: Column(children: <Widget>[
        Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(
                  hintText: '用户名',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return '用户名为必填项';
                  }
                  return null;
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: '密码',
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return '密码为必填项';
                  }
                  return null;
                },
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState!.validate()) {
                        // Process data.
                      }
                    },
                    child: const Text('登录'),
                  )),
              const Padding(padding: EdgeInsets.only(top: 30)),
            ],
          ),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            const Text('还没有账号，'),
            TextButton(
              child: const Text('去注册～'),
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
            )
          ])
      ]),
    );
  }
}
