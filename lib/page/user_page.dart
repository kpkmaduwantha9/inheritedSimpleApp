import 'package:flutter/material.dart';

import '../inherited/state_controller.dart';
import '../models/user_model.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    //* get the data data from InheritedWidget
    final User user = StateController.of(context).user;
    return Scaffold(
      appBar: AppBar(
        title: Text("User page"),
      ),
      body: Center(
        child: Text("uName ${user.name} and user email is ${user.email}"),
      ),
    );
  }
}
