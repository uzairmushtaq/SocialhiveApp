import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class AlbumNew_Post extends StatelessWidget {
  const AlbumNew_Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset(
            'assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png'),
        leading: InkWell(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
            size: 28,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            height: 20,
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/natural-7833800_1280.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: GFAvatar(
              backgroundColor: AppColors.primaryColor,
            ),
            title: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Enter your Caption',
              ),
              keyboardType: TextInputType.text,
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: AppColors.primaryColor, // Text color
                shadowColor: Colors.black, // Shadow color
                elevation: 5, // Elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 24, vertical: 12), // Padding
              ),
              child: Text(
                'ADD POST',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
