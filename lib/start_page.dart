import 'package:clothes_app/routes/routes.dart';
import 'package:clothes_app/theme/theme.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: darkTheme,
      routes: routesNavigation,
      initialRoute: '/welcome',
    );
  }
}
