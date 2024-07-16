import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:socialhive/views/featurs/Album/album_main.dart';
import 'package:socialhive/views/featurs/deviceinfo/device_info.dart';
import 'package:socialhive/widgets/colors/common_app.dart';
import 'package:socialhive/widgets/homepage/dashboard/gradiat_container.dart';
import 'package:socialhive/widgets/homepage/dashboard/our_feature_container.dart';

class Dashboard1 extends StatelessWidget {
  const Dashboard1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              "DASHBOARD",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Container(
              color: Colors.white,
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your  Friend",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Card(
              elevation: 10,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 15),
                            child: CircularProfileAvatar(
                              "",
                              backgroundColor: AppColors.primaryColor,
                              borderColor: AppColors.secondaryColor,
                              borderWidth: 1,
                              elevation: 20,
                              radius: 40,
                              cacheImage: true,
                              errorWidget: (context, url, error) {
                                return Icon(Icons.error);
                              },
                              onTap: () {},
                              animateFromOldImageOnUrlChange: true,
                              placeHolder: (context, url) {
                                return Container(
                                    child: Center(
                                        child: CircularProgressIndicator()));
                              },
                            ),
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.fiber_manual_record,
                                      color: Colors.green,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "Uzair Mushtaq",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: AppColors.primaryColor,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "Near Goverment Girls High School Sahja, Khanpur, Pakistan",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Flexible(
                            child: Column(
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Offline",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            height: 35,
                            width: 3,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Flexible(
                            child: Column(
                              children: [
                                Text(
                                  "User Status",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "N/A",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Container(
                            height: 35,
                            width: 3,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Flexible(
                            child: Column(
                              children: [
                                Text(
                                  "Mode",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "N/A",
                                  style: TextStyle(
                                    color: Colors.redAccent,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    letterSpacing: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DeviceInfo()));
                  },
                  // Grafient Container is Common Widget

                  child: GradientContainer(
                    gradientColors: [
                      Colors.cyan,
                      Colors.green,
                    ],
                    text: 'Device Info',
                    icon: FontAwesomeIcons.mobileAlt,
                  ),
                )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AlbumMain()));
                  },
                  child: GradientContainer(
                    gradientColors: [Colors.yellow, Colors.pinkAccent],
                    text: 'Gallery',
                    icon: Icons.browse_gallery,
                  ),
                )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: GradientContainer(
                  text: 'Mode',
                  gradientColors: [Colors.purple, AppColors.primaryColor],
                  icon: Icons.insert_emoticon,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Container(
              alignment: Alignment.bottomLeft,
              child: Text(
                "Our Feature",
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Flexible(
// OurFeatureContainer is Widget common
                    child: OurFeatureContainer(
                  icon: Icons.play_arrow,
                  text: 'Playlist',
                  iconColor: AppColors.secondaryColor,
                  containerColor: Colors.white,
                )),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                    child: OurFeatureContainer(
                  icon: Icons.location_on,
                  text: 'Location',
                  iconColor: AppColors.primaryColor,
                  containerColor: Colors.white,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Flexible(
                    child: OurFeatureContainer(
                  icon: Icons.list,
                  text: 'To-do-List',
                  iconColor: Colors.brown,
                  containerColor: Colors.white,
                )),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                    child: OurFeatureContainer(
                  icon: Icons.book,
                  text: 'Dairy',
                  iconColor: Colors.yellowAccent,
                  containerColor: Colors.white,
                )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Flexible(
                    child: OurFeatureContainer(
                  icon: Icons.notes,
                  text: 'Surprise Notes',
                  iconColor: AppColors.secondaryColor,
                  containerColor: Colors.white,
                )),
                SizedBox(
                  width: 20,
                ),
                Flexible(
                    child: OurFeatureContainer(
                  icon: Icons.dark_mode,
                  text: 'HoroScope',
                  iconColor: Colors.purple,
                  containerColor: Colors.white,
                )),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// import 'package:circular_profile_avatar/circular_profile_avatar.dart';
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:socialhive/widgets/colors/common_app.dart';
// import 'package:socialhive/widgets/homepage/dashboard/gradiat_container.dart';

// class Dashboard1 extends StatelessWidget {
//   const Dashboard1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       Container(
//         alignment: Alignment.center,
//         child: Text(
//           "DASHBOARD",
//           textAlign: TextAlign.center,
//           style: TextStyle(
//               color: Colors.black,
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               letterSpacing: 0),
//         ),
//       ),
//       Padding(
//         padding: const EdgeInsets.only(left: 14),
//         child: Container(
//           alignment: Alignment.bottomLeft,
//           child: Text(
//             "Your  Friend",
//             textAlign: TextAlign.start,
//             style: TextStyle(
//                 color: AppColors.primaryColor,
//                 fontSize: 17,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 0),
//           ),
//         ),
//       ),
//       Container(
//         padding: EdgeInsets.all(15),
//         width: double.infinity,
//         child: Card(
//           elevation: 10,
//           shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(5)),
//           child: Container(
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Container(
//                       child: Container(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: 20, vertical: 15),
//                         child: CircularProfileAvatar(
//                           "",
//                           backgroundColor: AppColors.primaryColor,
//                           borderColor: AppColors.secondaryColor,
//                           borderWidth: 1,
//                           elevation: 20,
//                           radius: 40,
//                           cacheImage: true,
//                           errorWidget: (context, url, error) {
//                             return Icon(Icons.error);
//                           },
//                           onTap: () {},
//                           animateFromOldImageOnUrlChange: true,
//                           placeHolder: (context, url) {
//                             return Container(
//                                 child:
//                                     Center(child: CircularProgressIndicator()));
//                           },
//                         ),
//                       ),
//                     ),
//                     Flexible(
//                         child: Padding(
//                       padding: const EdgeInsets.only(right: 15),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.fiber_manual_record,
//                                 color: Colors.green,
//                                 size: 15,
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 "Uzair Mushtaq",
//                                 style: TextStyle(
//                                     color: Colors.black,
//                                     fontSize: 15,
//                                     letterSpacing: 1),
//                               ),
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.location_on,
//                                 color: AppColors.primaryColor,
//                                 size: 30,
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Expanded(
//                                 child: Text(
//                                   "Near Goverment Girls High School Sahja, Khanpur, Pakistan",
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 10,
//                                       letterSpacing: 1),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ))
//                   ],
//                 ),
//                 SizedBox(
//                   height: 9,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: Flexible(
//                           child: Column(
//                         children: [
//                           Text(
//                             "Status",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 14,
//                                 letterSpacing: 1),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text(
//                             "Ofline",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 14,
//                                 letterSpacing: 1),
//                           ),
//                         ],
//                       )),
//                     ),
//                     SizedBox(
//                       child: Container(
//                         height: 35,
//                         width: 3,
//                         color: AppColors.primaryColor,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: Flexible(
//                           child: Column(
//                         children: [
//                           Text(
//                             "User Status",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w600,
//                                 letterSpacing: 1),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text(
//                             "N/A",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 14,
//                                 letterSpacing: 1),
//                           ),
//                         ],
//                       )),
//                     ),
//                     SizedBox(
//                       child: Container(
//                         height: 35,
//                         width: 3,
//                         color: AppColors.primaryColor,
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(20),
//                       child: Flexible(
//                           child: Column(
//                         children: [
//                           Text(
//                             "Mode",
//                             style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.w600,
//                                 letterSpacing: 1),
//                           ),
//                           SizedBox(
//                             height: 5,
//                           ),
//                           Text(
//                             "N/A",
//                             style: TextStyle(
//                                 color: Colors.redAccent,
//                                 fontWeight: FontWeight.w600,
//                                 fontSize: 14,
//                                 letterSpacing: 1),
//                           ),
//                         ],
//                       )),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//       Row(
//         children: [
//           Container(
//             height: 50,
//             width: 50,
//             color: Colors.green,
//           )
//         ],
//       )
//     ]);
//   }
// }
