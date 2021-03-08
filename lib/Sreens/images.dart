import 'package:flutter/material.dart';
import 'dart:io';

class GetImage extends StatefulWidget {
  GetImage(this.images);
  final List<File> images;
  @override
  _GetImageState createState() => _GetImageState();
}

class _GetImageState extends State<GetImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          'Report',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(
          widget.images.length,
          (index) {
            return Image.file(
              File(widget.images[index].path)
            );
          },
        ),
      ),
    );
  }
}
