import 'package:flutter/material.dart';
import 'package:inherited_w2/inherited/state_controller.dart';

class AddNewUser extends StatefulWidget {
  const AddNewUser({super.key});

  @override
  State<AddNewUser> createState() => _AddNewUserState();
}

class _AddNewUserState extends State<AddNewUser> {
  String userName = "";
  String userEmail = "";
  String userPw = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add user"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Name"),
              onChanged: (value) {
                setState(() {
                  userName = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Email"),
              onChanged: (value) {
                setState(() {
                  userEmail = value;
                });
              },
            ),
            TextField(
              decoration: InputDecoration(labelText: "Pw"),
              onChanged: (value) {
                setState(() {
                  userPw = value;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                StateController.of(context).updateUser(
                  name: userName,
                  email: userEmail,
                  password: userPw,
                );
                Navigator.pop(context);
              },
              child: Text("Add User"),
            ),
          ],
        ),
      ),
    );
  }
}
