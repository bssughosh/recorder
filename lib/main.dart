import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:recorder/pages/page2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(snapshot.error.toString());
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return Page2();
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return CircularProgressIndicator();
      },
    );
  }
}
