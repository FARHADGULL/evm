// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';
import 'package:flutter/material.dart';

import 'faceDetector.dart';

class JsonScreen extends StatelessWidget {
  final String jsonData;

  const JsonScreen({Key? key, required this.jsonData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final decodedData = jsonDecode(jsonData);

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('JSON Data'),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(56.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100.0),
              Text(
                'Name: ${decodedData['Name']}',
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Father Name: ${decodedData['Father Name']}',
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 8.0),
              Text(
                'CNIC: ${decodedData['CNIC']}',
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Date of Birth: ${decodedData['Date of Birth']}',
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Date of Issue: ${decodedData['Date of Issue']}',
                style: const TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Date of Expiry: ${decodedData['Date of Expiry']}',
                style: const TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: 100.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FaceDetectionScreen(),
                      ),
                    );
                  },
                  child: Text('Verified?'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey, // Change the button color here
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
