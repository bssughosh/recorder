# Recorder

An Audio and Video Recorder for Web using Flutter.

## Contents of each file

* [lib/](lib/)
	* [main.dart](lib/main.dart): Entry Point to the flutter code. It alse initializes Firebase services and then forwards to the further pages if there is no error in initializing Firebase.
	* [pages/](lib/pages/) : Contains all the views of the app
		* [page1.dart](lib/pages/page1.dart) : Contains the initial view where we can just start and stop live webcam streaming. The streaming could not be recorded and hence could not be saved to the device.
		* [page2.dart](lib/pages/page2.dart) : It contains a stateless widget which initializes the recording page.
		* [recording_page.dart](lib/pages/recording_page.dart) : Contains 2 buttons, which indicate start and stop recording. Once we stop recording, there is an option to either save it locally or to firestore.
  * [widgets/](lib/widgets/) : Contains reusable modified widgets
		* [normal_button.dart](lib/widgets/normal_button.dart) : It is a Customized Raised Button component which expects the label, icon, onPressed function and enable status.
		
References:
1. [Flutter Dev Resources](https://flutter.dev/web)
1. [Firebase Docs](https://firebase.google.com/docs/web/setup)
1. [RecordRTC](https://recordrtc.org/)
