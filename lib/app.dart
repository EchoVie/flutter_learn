import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_learn/config/routes.dart';
import 'package:flutter_learn/config/application.dart';

class App extends StatefulWidget {
  const App({required Key key}) : super(key: key);

  @override
  State createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  static late final FluroRouter router;

  AppState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluro',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      onGenerateRoute: Application.router.generator,
    );
  }
}
