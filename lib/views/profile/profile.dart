import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:socialhive/views/profile/profile_setting.dart';
import 'package:socialhive/widgets/colors/common_app.dart';
import 'package:socialhive/widgets/mainprofile/profile_commmon_container.dart';

class Profilemain extends StatefulWidget {
  const Profilemain({super.key});

  @override
  State<Profilemain> createState() => _ProfilemainState();
}

class _ProfilemainState extends State<Profilemain> {
  bool more = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "MY PROFILE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "",
                        ),
                        fit: BoxFit.cover)),
                child: CircularProfileAvatar(
                  "",
                  backgroundColor: AppColors.primaryColor,
                  borderColor: AppColors.secondaryColor,
                  borderWidth: 1,
                  elevation: 20,
                  cacheImage: true,
                  errorWidget: (context, url, error) {
                    return Icon(Icons.error);
                  },
                  onTap: () {},
                  animateFromOldImageOnUrlChange: true,
                  placeHolder: (context, url) {
                    return Container(
                        child: Center(child: CircularProgressIndicator()));
                  },
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Uzair Mushtaq ",
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            Text("@uzairmushtaq82 "),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileSetting()));
              },
              child: Text(
                'Edit Profile Detail',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 19),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),

                  // Adjust the value to change the button's roundness
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            ProfileCommmonContainer(
                icon: Icons.email,
                containerColor: Color(0xffeeeeee),
                value: 'uzairmushtaq82@gmail.com',
                type: 'Email'),
            ProfileCommmonContainer(
                icon: Icons.flag,
                containerColor: Colors.transparent,
                value: 'Pakistan',
                type: 'Country'),
            ProfileCommmonContainer(
                icon: Icons.phone,
                containerColor: Color(0xffeeeeee),
                value: 'Not Currently Set',
                type: 'phone Number'),
            more
                ? ProfileCommmonContainer(
                    icon: Icons.male,
                    containerColor: Colors.transparent,
                    value: 'Male',
                    type: 'Gender')
                : Container(),
            more
                ? ProfileCommmonContainer(
                    icon: Icons.power_off_outlined,
                    containerColor: Color(0xffeeeeee),
                    value: 'Patner',
                    type: 'Saddam Hussain')
                : Container(),
            more
                ? ProfileCommmonContainer(
                    icon: Icons.fingerprint,
                    containerColor: Colors.transparent,
                    value: 'UID',
                    type: 'wwwwwrrrttrtyrryhggg54')
                : Container(),
            more
                ? ProfileCommmonContainer(
                    icon: Icons.timer,
                    containerColor: Color(0xffeeeeee),
                    value: 'Account Created',
                    type: '24-11-2024')
                : Container(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  more = !more;
                });
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => Container()));
              },
              child: Text(
                more ? '- show  less' : '+ show more',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 19),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffeeeeee),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),

                  // Adjust the value to change the button's roundness
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.pink],
                      ),
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the radius as needed
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Subscribe To',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text("Premium",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white))
                        ]),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.blueAccent,
                        Colors.grey,
                      ]),
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the radius as needed
                    ),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Subscribe On',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text("N/A",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white))
                        ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
