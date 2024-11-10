import 'package:flutter/material.dart';
import 'package:inherited_w2/inherited/state_controller.dart';
import 'package:inherited_w2/page/add_new_user.dart';
import 'package:inherited_w2/page/user_page.dart';

import '../models/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //* get the data data from InheritedWidget
    final User user = StateController.of(context).user;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("name : ${user.name}"),
            Text("email : ${user.email}"),
            Text("pw : ${user.password}"),
            SizedBox(
              height: 20,
            ),

            //*
            ElevatedButton(
              onPressed: () {
                //* go to new user page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddNewUser(),
                  ),
                );
              },
              child: Text("Add new user"),
            ),
            //*
            ElevatedButton(
              onPressed: () {
                //* go to  user page
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const UserPage(),
                  ),
                );
              },
              child: Text(" user page"),
            ),
          ],
        ),
      ),
    );
  }
}
