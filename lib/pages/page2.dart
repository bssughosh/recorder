import 'package:flutter/material.dart';

import 'package:recorder/pages/recording_page.dart';

/// Loads the Stateful Widget for the page
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RecordingPage(),
    );
  }
}
