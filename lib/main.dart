import 'package:flutter/material.dart';
import 'package:inherited_w2/inherited/state_controller.dart';
import 'package:inherited_w2/models/user_model.dart';
import 'package:inherited_w2/page/home_page.dart';

void main() {
  runApp(
    StateController(
      user: User(
        name: "name",
        email: "email",
        password: "password",
      ),
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
