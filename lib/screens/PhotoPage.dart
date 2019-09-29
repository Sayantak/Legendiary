import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:path/path.dart' show join;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class PhotoPage extends StatefulWidget {
  static const String id = "Photo 📷";
  final List<CameraDescription> cameras;

  PhotoPage(this.cameras);
  @override
  _PhotoPageState createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(widget.cameras[0], ResolutionPreset.veryHigh);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return Container();
    }
    return Scaffold(
      body: AspectRatio(
        aspectRatio: controller.value.aspectRatio,
        child: CameraPreview(controller),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera_alt),
        onPressed: () async {
          try {
            final path = join(
              (await getTemporaryDirectory()).path,
              '${DateTime.now()}.png',
            );
            await controller.takePicture(path);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DisplayPictureScreen(imagePath: path),
              ),
            );
          } catch (e) {
            print(e);
          }
        },
      ),
    );
  }
}

class DisplayPictureScreen extends StatelessWidget {
  final String imagePath;

  const DisplayPictureScreen({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Display the Picture')),
      body: Image.file(File(imagePath)),
    );
  }
}
