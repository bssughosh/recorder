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
    var file = new File([blob], `video_${Date.now()}.webm`, {
        type: 'video/webm'
    });
    if (confirm("Do you want to save to Firebase?") == true) {
        var storageRef = firebase.storage().ref();

        storageRef.child(file.name).put(file).then(function (snapshot) {
            alert('Uploaded video file to Firebase');
        });
    } else {
        invokeSaveAsDialog(blob, `video_${Date.now()}.webm`);
    }
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