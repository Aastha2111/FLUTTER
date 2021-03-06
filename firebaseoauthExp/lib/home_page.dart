// import 'package:firebase_authentication_tutorial/authentication_service.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

import 'authentication_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HOME"),
            ElevatedButton(
              onPressed: () {
                context.read<AuthenticationService>().signOut();
              },
              child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}
