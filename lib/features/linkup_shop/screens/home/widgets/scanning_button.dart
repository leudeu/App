import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class ScanningPage extends StatefulWidget {
  const ScanningPage({super.key});

  @override
  _ScanningPageState createState() => _ScanningPageState();
}

class _ScanningPageState extends State<ScanningPage> {
  late List<CameraDescription> cameras;
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    initializeCamera();
  }

  void initializeCamera() async {
    cameras = await availableCameras();
    controller = CameraController(cameras[0], ResolutionPreset.high);
    await controller.initialize();
    setState(() {});
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scanning Window')),
      body: controller.value.isInitialized
          ? CameraPreview(controller)
          : Center(child: CircularProgressIndicator()),
    );
  }
}
