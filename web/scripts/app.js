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
// function startRecord() {
//     navigator.mediaDevices.getUserMedia({
//         video: true,
//         audio: true
//     }).then(async function (stream) {
//         recorder = RecordRTC(stream, {
//             type: 'video',
//             mimeType: 'video/webm;codecs=h264',

//         });
//         recorder.startRecording();
//     });
// }

// function stopRecord() {
//     recorder.stopRecording(function () {
//         let blob = recorder.getBlob();
//         invokeSaveAsDialog(blob, 'video.webm');
//     });
// }