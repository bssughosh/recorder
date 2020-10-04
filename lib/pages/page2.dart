import 'package:flutter/material.dart';
import 'dart:js' as js;

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page2Working(),
    );
  }
}

class Page2Working extends StatefulWidget {
  @override
  _Page2WorkingState createState() => _Page2WorkingState();
}

class _Page2WorkingState extends State<Page2Working> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          RaisedButton(
            child: Text('Start Recording'),
            onPressed: _startRecording,
          ),
          SizedBox(
            width: 15,
          ),
          RaisedButton(
            child: Text('Stop Recording'),
            onPressed: _stopRecording,
          ),
        ],
      ),
    );
  }

  _startRecording() {
    js.context.callMethod('startRecord');
  }

  _stopRecording() {
    js.context.callMethod('stopRecord');
  }
}
