import 'package:flutter/material.dart';
import 'dart:js' as js;

import 'package:recorder/widgets/normal_button.dart';

/// The Stateful Widget for the recoding page
class RecordingPage extends StatefulWidget {
  @override
  _RecordingPageState createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> {
  bool startActive = false;
  bool stopActive = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio and Video Recoreder'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NormalButton(
              name: 'Start Recording',
              onPress: _startRecording,
              isActive: startActive,
            ),
            SizedBox(
              width: 15,
            ),
            NormalButton(
              name: 'Stop Recording',
              onPress: _stopRecording,
              isActive: stopActive,
            ),
          ],
        ),
      ),
    );
  }

  _startRecording() {
    setState(() {
      startActive = true;
      stopActive = false;
    });
    js.context.callMethod('startRecord');
  }

  _stopRecording() {
    setState(() {
      startActive = false;
      stopActive = true;
    });
    js.context.callMethod('stopRecord');
  }
}
