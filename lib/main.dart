import 'package:animations/screens/universe_screen.dart';
import 'package:flutter/material.dart';
import 'package:animations/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

const routes = [
  {"path": "/", "widget": HomeScreen()},
  {"path": "/universe", "widget": UniverseScreen()}
];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  _setRoutes() {
    var routes = {};

    for (var i = 0; i < routes.length; i++) {
      return {routes[i]['path']: (context) => routes[i]['widget']};
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomeScreen(),
        "universe": (context) => const UniverseScreen(),
      },
      onGenerateRoute: (context) => null,
      initialRoute: "/",
    );
  }
}
