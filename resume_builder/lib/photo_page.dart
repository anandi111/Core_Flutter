import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'logic.dart';

class Photo_Page extends StatefulWidget {
  const Photo_Page({Key? key}) : super(key: key);

  @override
  _Photo_PageState createState() => _Photo_PageState();
}

class _Photo_PageState extends State<Photo_Page> {
  /// ImagePicker
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        image == null
            ? Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/image/user.png",
                        ))),
              )
            : Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: FileImage(File(image!.path)),
                    )),
              ),
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () async {
            final _image = await _picker.pickImage(source: ImageSource.gallery);
            setState(() {
              image = _image!;
            });
          },
          child: Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [conGradOne, conGradTwo])),
            child: Center(
                child: Text(
              "Choose from Gallery",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        InkWell(
          onTap: () async {
            final _image = await _picker.pickImage(source: ImageSource.camera);
            setState(() {
              image = _image!;
            });
          },
          child: Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [conGradOne, conGradTwo])),
            child: Center(
                child: Text(
              "Take Photo",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
          ),
        ),
      ],
    );
  }
}
