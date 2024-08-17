import 'dart:async';
import 'dart:io';
import 'package:dashed_rect/dashed_rect.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:planto/components/mydrawer.dart';
import 'package:planto/pages/content-pages/resultpage.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  Future imageFromGallery() async {
    final resultImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (resultImage == null) {
      return;
    }
    setState(() {
      selectedtImage = File(resultImage.path);
    });
  }

  Future imageFromCamera() async {
    final resultImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (resultImage == null) {
      return;
    }
    setState(() {
      selectedtImage = File(resultImage.path);
    });
  }

  File? selectedtImage;
  late String loadingMessage;
  @override
  void initState() {
    loadingMessage = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(leading: Builder(
        builder: (context) {
          return IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu),
          );
        },
      )),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                child: Center(
                  child: Text(
                    "Drop a image of the affected plant",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 400,
                width: 300,
                child: DashedRect(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  strokeWidth: 2.0,
                  gap: 5.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: selectedtImage != null
                        ? Image.file(
                            selectedtImage!,
                          )
                        : IconButton(
                            onPressed: imageFromGallery,
                            icon: const Icon(
                              Icons.add,
                              size: 50,
                            ),
                          ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 53, 164, 86),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: imageFromGallery,
                    label: const Text(
                      'Gallery',
                      style: TextStyle(fontSize: 16),
                    ),
                    icon: const Icon(Icons.photo),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 53, 164, 86),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: imageFromCamera,
                    label: const Text(
                      'Camera',
                      style: TextStyle(fontSize: 16),
                    ),
                    icon: const Icon(Icons.camera_alt),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton.icon(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  setState(
                    () {
                      loadingMessage =
                          "Please be patient and the result will be shown in few minutes...";
                      Timer(
                        const Duration(seconds: 3),
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ResultPage(),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                label: const Text(
                  'Find Disease',
                  style: TextStyle(fontSize: 16),
                ),
                icon: const Icon(Icons.search),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20,right: 20),
                child: Center(
                  child: Text(
                    loadingMessage,
                    style: const TextStyle(fontSize: 17),
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
