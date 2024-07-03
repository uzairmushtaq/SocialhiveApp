import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
            'assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png'),
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
            size: 28,
          ),
        ),
      ),
      body: Container(
          child: PhotoView(
        imageProvider: AssetImage(url),
      )),
    );
  }
}
