import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/toggle/gf_toggle.dart';
import 'package:socialhive/widgets/colors/common_app.dart';
import 'package:socialhive/widgets/profile_setting/pr_heading_items.dart';
import 'package:socialhive/widgets/profile_setting/pr_setting_heading.dart';

class ProfileSetting extends StatelessWidget {
  const ProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 280,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
            ),
            Column(children: [
              SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    Text(
                      "Setting",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20))),
                  child: Container(
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircularProfileAvatar(
                              '',
                              backgroundColor: AppColors.primaryColor,
                              elevation: 2,
                              radius: 20,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Uzair Mushtaq"),
                            Divider(
                              color: Colors.grey,
                              thickness: 5,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      PrSettingHeading(heading: "Profile Setting"),
                      PrHeadingContainer(
                        value: 'Edit Name ',
                      ),
                      PrHeadingContainer(
                        value: 'Edit Profile Number',
                      ),
                      PrHeadingContainer(
                        value: 'Change paswword ',
                      ),
                      PrHeadingContainer(
                        value: 'Email Status  ',
                        secondarywidget: Row(children: [
                          Text(
                            "Not Verified",
                            style: TextStyle(color: Colors.red),
                          ),
                          Icon(Icons.arrow_circle_right),
                        ]),
                      ),
                      PrSettingHeading(heading: "Notification Setting"),
                      PrHeadingContainer(
                          value: 'Push Notification  ',
                          secondarywidget: GFToggle(
                            onChanged: (val) {},
                            value: true,
                          )),
                      PrSettingHeading(heading: "Application Setting"),
                      PrHeadingContainer(
                        value: 'backgroud update  ',
                        secondarywidget: Row(children: [
                          Text(
                            "Not Verified",
                            style: TextStyle(color: Colors.red),
                          ),
                          Icon(Icons.arrow_circle_right),
                        ]),
                      ),
                    ]),
                  ),
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
