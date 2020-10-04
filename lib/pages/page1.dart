// import 'dart:html';
// import 'dart:ui' as ui;

// import 'package:flutter/material.dart';

// class Page1 extends StatefulWidget {
//   @override
//   _Page1State createState() => _Page1State();
// }

// class _Page1State extends State<Page1> {
//   Widget _webcamWidget; // VideoElement
//   VideoElement _webcamVideoElement;
//   bool isActive = false;

//   @override
//   void initState() {
//     super.initState();
//     _webcamVideoElement = VideoElement();

//     ui.platformViewRegistry.registerViewFactory('webcamVideoElement',
//         (int viewId) => _webcamVideoElement); // Create video widget

//     _webcamWidget = HtmlElementView(
//         key: UniqueKey(),
//         viewType: 'webcamVideoElement'); // Access the webcam stream

//     window.navigator.getUserMedia(video: true).then((MediaStream stream) {
//       _webcamVideoElement.srcObject = stream;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             width: 750,
//             height: 600,
//             child: _webcamWidget,
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             isActive = isActive ? false : true;
//             if (isActive) {}
//             return isActive
//                 ? _webcamVideoElement.play()
//                 : _webcamVideoElement.pause();
//           },
//           tooltip: 'Start stream, stop stream',
//           child: Icon(Icons.camera_alt),
//         ),
//       ),
//     );
//   }

//   _performWork() {
//     isActive = isActive ? false : true;
//     return isActive ? _webcamVideoElement.play() : _webcamVideoElement.pause();
//   }
// }
