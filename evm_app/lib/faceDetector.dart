// ignore_for_file: use_build_context_synchronously, deprecated_member_use, file_names

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// ignore: depend_on_referenced_packages
import 'package:permission_handler/permission_handler.dart';
import 'package:gallery_saver/gallery_saver.dart';

class FaceDetectionScreen extends StatefulWidget {
  const FaceDetectionScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FaceDetectionScreenState createState() => _FaceDetectionScreenState();
}

class _FaceDetectionScreenState extends State<FaceDetectionScreen> {
  File? _image;

  Future<void> _getImageFromCamera(ImageSource source) async {
    final pickedImage = await ImagePicker().getImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
      final shouldSaveImage = await showDialog<bool>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Save image to gallery?'),
            actions: <Widget>[
              TextButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
              ),
              TextButton(
                child: const Text('Save'),
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
              ),
            ],
          );
        },
      );
      if (shouldSaveImage != null && shouldSaveImage) {
        await _saveImageToGallery();
      }
    }
  }

  Future<void> _saveImageToGallery() async {
    // Request permission to access the photo gallery
    final status = await Permission.storage.request();
    if (!status.isGranted) {
      // If permission is not granted, show an error message and return
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Permission denied'),
      ));
      return;
    }

    // Save the image to the gallery
    final result = await GallerySaver.saveImage(_image!.path);
    if (result == true) {
      // Show a message to the user indicating that the image was saved
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Image saved to gallery'),
      ));
    } else {
      // Show an error message to the user
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Failed to save image to gallery'),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Face Detection Screen'),
      // ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFFFFF),
              Color(0xFFFFFFFF),
            ],
          ),
        ),
        child: Center(
          child: _image == null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(
                      Icons.face,
                      size: 120,
                      //color: Colors.white,
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Detect Your Face',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )
              : Image.file(_image!),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _getImageFromCamera(ImageSource.camera);
        },
        tooltip: 'Take a picture',
        child: const Icon(Icons.camera_alt),
      ),
    );
  }
}
