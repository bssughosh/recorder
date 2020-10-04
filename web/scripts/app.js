function captureCamera(callback) {
    navigator.mediaDevices.getUserMedia({ audio: true, video: true }).then(function (camera) {
        callback(camera);
    }).catch(function (error) {
        alert('Unable to capture your camera. Please check console logs.');
        console.error(error);
    });
}

var recorder;

function stopRecordingCallback() {
    var blob = recorder.getBlob();
    // var storageRef = firebase.storage().ref();

    // var file = blob
    // storageRef.put(file).then(function (snapshot) {
    //     console.log('Uploaded a blob or file!');
    // });

    invokeSaveAsDialog(blob, 'video.webm');
}


function startRecord() {
    captureCamera(function (camera) {
        recorder = RecordRTC(camera, {
            type: 'video',
            mimeType: 'video/webm;codecs=h264'
        });

        recorder.startRecording();

        recorder.camera = camera;
    });
}

function stopRecord() {
    recorder.stopRecording(stopRecordingCallback);
}