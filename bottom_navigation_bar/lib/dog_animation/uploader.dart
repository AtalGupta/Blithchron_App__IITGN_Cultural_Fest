// import 'dart:html';
// import 'dart:html';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Uploader extends StatefulWidget {
  final File file;
  // Uploader({super.key});
  Uploader({Key? key, required this.file}) : super(key: key);

  @override
  State<Uploader> createState() => _UploaderState();
}

class _UploaderState extends State<Uploader> {
  final user = FirebaseAuth.instance.currentUser!;

  // final FirebaseStorage _storage =
  //     FirebaseStorage(storageBucket: 'gs://blithapp-1bab7.appspot.com');
  FirebaseStorage _storage =
      FirebaseStorage.instanceFor(bucket: 'gs://blithapp-1bab7.appspot.com');

  UploadTask? _uploadTask;

  void _startUpload() {
    String filePath =
        'images/Name: ${user.displayName}, User Id: ${user.uid}, Time: ${DateTime.now()}.png';
    setState(() {
      _uploadTask = _storage.ref().child(filePath).putFile(widget.file);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_uploadTask != null) {
      // return StreamBuilder<UploadTask>(stream: _uploadTask!.events,builder: (context, snapshot){
      //   var event = snapshot?.data?.snapshot;
      //   double progressPercent = event !=null;
      // },);}
      return Container(
          // height: 100,
          // color: Colors.black,
          );
      // return Column(children: [if (_uploadTask.isCom)],)
    } else {
      return Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.indigo),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      MediaQuery.of(context).size.width * 0.0625),
                  side: BorderSide(color: Colors.white),
                ),
              ),
            ),
            // style: ElevatedButton.styleFrom(
            //   primary: Colors.indigo,
            // ),
            onPressed: _startUpload,
            child: Icon(Icons.upload_rounded)),
      );
    }
  }
}
