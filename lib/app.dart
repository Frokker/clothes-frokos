import 'package:clothes_app/pages/welcome.dart';
import 'package:clothes_app/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app_state.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool _isLogging = false;
  late AppState _state;

  late Map<String, WidgetBuilder> _routes;

  @override
  void initState() {
    super.initState();

    _state = AppState();
    _routes = {
      WelcomePage.routeName: (_) => WelcomePage(),
      HomePage.routeName: (_) => HomePage(),
    };
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Gotham'),
      title: 'Shop',
      home: _isLogging ? HomePage() : WelcomePage(),
    );
  }
}
