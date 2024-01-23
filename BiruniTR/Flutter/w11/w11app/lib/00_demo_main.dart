import 'package:flutter/material.dart';
import 'package:w11app/01_demo.dart';
import 'package:w11app/02_demo.dart';
import 'package:w11app/03_demo.dart';
import 'package:w11app/04_demo.dart';
import 'package:w11app/ongenerated_root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'w11 app',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        initialRoute: "/",
        routes: {
          "/": (context) => SideBarMenuPageMainDemo(),
          "/Page1": (context) => PageDemo1(),
          "/Page2": (context) => PageDemo2(),
          "/Page3": (context) => PageDemo3()
        }

        // home: OngeneratedRouteMain(),
        // onGenerateRoute: _onGenerateRoute,
        );
  }
}

Route<dynamic>? _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (context) => OnGeneratedRouteMain());
    case "/OnGeneratedRoutePage1":
      return MaterialPageRoute(builder: (context) => OnGeneratedRoutePage1());
    case "/OnGeneratedRoutePage2":
      return MaterialPageRoute(builder: (context) => OnGeneratedRoutePage2());

      break;
    default:
  }
}
