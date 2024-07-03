import 'package:flutter/material.dart';

import 'package:socialhive/views/featurs/deviceinfo/Battrystatus/Battery_info.dart';
import 'package:socialhive/views/featurs/deviceinfo/Device_information/Device_space.dart';
import 'package:socialhive/views/featurs/deviceinfo/genralinfo/genral_info.dart';
import 'package:socialhive/views/featurs/deviceinfo/location/loaction_info.dart';
import 'package:socialhive/views/featurs/deviceinfo/userstatus/user_status.dart';

import 'package:socialhive/widgets/colors/common_app.dart';
import 'package:socialhive/widgets/deviceinfo/info_gradient_container.dart';

class DeviceInfo extends StatelessWidget {
  const DeviceInfo({super.key});

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
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(
            Icons.arrow_back,
            color: AppColors.primaryColor,
            size: 28,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.greenAccent,
            child: Center(
              child: Text(
                "Device Info",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 10,
                          child: InfoGradientContainer(
                            Lineargradientcolor: true,
                            ttile: 'User Status',
                            clr: [Colors.blueAccent, Colors.cyanAccent],
                            overlaycolor: Colors.cyan,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => UserStatus(),
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: InfoGradientContainer(
                            Lineargradientcolor: false,
                            ttile: 'Battery',
                            clr: [Colors.orangeAccent, Colors.pinkAccent],
                            overlaycolor: Colors.orangeAccent,
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BatteryInfo(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: InfoGradientContainer(
                      Lineargradientcolor: true,
                      ttile: 'General',
                      clr: [Colors.cyan, Colors.white],
                      overlaycolor: Colors.cyanAccent,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GeneralInfo()));
                        // Handle the onPressed event here
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: InfoGradientContainer(
                      Lineargradientcolor: true,
                      ttile: 'Device Space',
                      clr: [Colors.cyan, Colors.cyanAccent],
                      overlaycolor: Colors.cyan,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeviceSpace()));
                        // Handle the onPressed event here
                      },
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: InfoGradientContainer(
                            Lineargradientcolor: true,
                            ttile: 'Location',
                            clr: [Colors.purpleAccent, Colors.blue],
                            overlaycolor: Colors.pinkAccent,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoactionInfo()));
                              // Handle the onPressed event here
                            },
                          ),
                        ),
                        Expanded(
                          flex: 10,
                          child: InfoGradientContainer(
                            Lineargradientcolor: false,
                            ttile: 'Orientation',
                            clr: [Colors.orangeAccent, Colors.pinkAccent],
                            overlaycolor: Colors.orangeAccent,
                            onPressed: () {
                              // Handle the onPressed event here
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:socialhive/views/featurs/Battrystatus/Battery_info.dart';
// import 'package:socialhive/views/featurs/userstatus/user_status.dart';
// import 'package:socialhive/widgets/colors/common_app.dart';
// import 'package:socialhive/widgets/deviceinfo/info_gradient_container.dart';

// class DeviceInfo extends StatelessWidget {
//   const DeviceInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: Image.asset(
//             'assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png'),
//         leading: GestureDetector(
//             onTap: Navigator.of(context).pop,
//             child: Icon(
//               Icons.arrow_back,
//               color: AppColors.primaryColor,
//               size: 28,
//             )),
//       ),
//       body: Column(children: [
//         Container(
//           height: 60,
//           width: double.infinity,
//           color: Colors.greenAccent,
//           child: Center(
//             child: Text(
//               "Device Info",
//               style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         Expanded(
//             child: Container(
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     child: Column(
//                       children: [
//                         Expanded(
//                           flex: 10,
//                           child: InfoGradientContainer(
//                             Lineargradientcolor: true,
//                             ttile: 'User Sattus',
//                             clr: [
//                               Colors.blueAccent,
//                               Colors.cyanAccent,
//                             ],
//                             overlaycolor: Colors.cyan,
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => UserStatus()));
//                             },
//                           ),
//                         ),
//                         Expanded(
//                           flex: 6,
//                           child: InfoGradientContainer(
//                             Lineargradientcolor: false,
//                             ttile: 'Battry',
//                             clr: [
//                               Colors.orangeAccent,
//                               Colors.pinkAccent,
//                             ],
//                             overlaycolor: Colors.orangeAccent,
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => BatteryInfo()));
//                             },
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: InfoGradientContainer(
//                     Lineargradientcolor: true,
//                     ttile: 'General',
//                     clr: [
//                       Colors.cyan,
//                       Colors.white,
//                     ],
//                     overlaycolor: Colors.cyanAccent,
//                     onPressed: () {},
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )),
//         Expanded(
//             child: Container(
//           child: Padding(
//             padding: const EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 3,
//                   child: InfoGradientContainer(
//                     Lineargradientcolor: true,
//                     ttile: 'Device Space',
//                     clr: [
//                       Colors.cyan,
//                       Colors.cyanAccent,
//                     ],
//                     overlaycolor: Colors.cyan,
//                     onPressed: () {},
//                   ),
//                 ),
//                 Expanded(
//                   flex: 6,
//                   child: Container(
//                     child: Column(
//                       children: [
//                         Expanded(
//                           flex: 6,
//                           child: InfoGradientContainer(
//                             Lineargradientcolor: true,
//                             ttile: 'Location',
//                             clr: [
//                               Colors.purpleAccent,
//                               Colors.blue,
//                             ],
//                             overlaycolor: Colors.pinkAccent,
//                             onPressed: () {},
//                           ),
//                         ),
//                         Expanded(
//                           flex: 10,
//                           child: InfoGradientContainer(
//                             Lineargradientcolor: false,
//                             ttile: 'Orientation',
//                             clr: [
//                               Colors.orangeAccent,
//                               Colors.pinkAccent,
//                             ],
//                             overlaycolor: Colors.orangeAccent,
//                             onPressed: () {},
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         )),
//       ]),
//     );
//   }
// }
