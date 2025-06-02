import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:milk_detection/screens/Home_screen.dart';
import '../main.dart';
import 'package:permission_handler/permission_handler.dart';

class ScannersdetectScreen extends StatefulWidget {
  final CameraDescription camera;
  ScannersdetectScreen(this.camera);

  @override
  State<ScannersdetectScreen> createState() => _ScannersdetectScreenState();
}

class _ScannersdetectScreenState extends State<ScannersdetectScreen> {
  CameraController? _controller;
  bool _isInitialed = false;

  @override
  void initState() {
    super.initState();
    _askPermission();
  }

  void _askPermission() async {
    var status = await Permission.camera.request();
    if (status.isGranted) {
      _initializeCamera();
    } else {
      print("❌ Permission denied");
    }
  }

  void _initializeCamera() async {
    _controller = CameraController(widget.camera, ResolutionPreset.ultraHigh);
    try {
      await _controller!.initialize();
      setState(() {
        _isInitialed = true;
      });
    } catch (e) {
      print("❌ Camera Error: $e");
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final protein = random.nextInt(100);
    final fats = random.nextInt(100);
    final carbs = random.nextInt(100);

    return Scaffold(
      body:
          _isInitialed
              ? Stack(
                children: [
                  Positioned.fill(child: CameraPreview(_controller!)),
                  Positioned(
                    bottom: 30,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context, {
                            'protien': protein,
                            'fats': fats,
                            'carbs': carbs,
                          });
                        },
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(width: 3, color: Colors.grey),
                          ),
                          child: Icon(Icons.circle),
                        ),
                      ),
                    ),
                  ),
                ],
              )
              : Center(child: CircularProgressIndicator()),
    );
  }
}
