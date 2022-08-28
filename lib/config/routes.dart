import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_learn/pages/home/index.dart';
import 'package:flutter_learn/pages/login/index.dart';
import 'package:flutter_learn/pages/register/index.dart';
import 'package:flutter_learn/pages/user/index.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const Home();
});

var loginHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const Login();
});

var registerHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const Register();
});

var userHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return const User();
});

class Routes {
  static String root = '/';
  static String login = '/login';
  static String register = '/register';
  static String user = '/user';

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND, $router");
      return;
    });
    router.define(root, handler: rootHandler);
    router.define(login, handler: loginHandler);
    router.define(register, handler: registerHandler);
    router.define(user, handler: userHandler);
  }
}
