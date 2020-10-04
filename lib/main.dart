import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recorder/pages/page2.dart';

void main() {
  runApp(MyApp());
}

/// Initialize Firebase
/// If there is any error, a text containing error message is displayed
/// If the connection is successfully established, page2.dart is loaded
/// If the connection is being established, A Circular Progress Indicator is displayed
class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return Page2();
        }

        return CircularProgressIndicator();
      },
    );
  }
}
