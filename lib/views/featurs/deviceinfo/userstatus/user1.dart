// import 'package:flutter/material.dart';
// import 'package:socialhive/widgets/colors/common_app.dart';
// import 'package:socialhive/widgets/deviceinfo/info_gradient_container.dart';

// class UserStatus extends StatelessWidget {
//   const UserStatus({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(60),
//         child: AppBar(
//           centerTitle: true,
//           elevation: 0,
//           backgroundColor: Colors.white,
//           title: Image.asset(
//               'assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png'),
//           leading: GestureDetector(
//               onTap: Navigator.of(context).pop,
//               child: Icon(
//                 Icons.arrow_back,
//                 color: AppColors.primaryColor,
//                 size: 28,
//               )),
//         ),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Container(
//           decoration: BoxDecoration(
//               gradient: LinearGradient(colors: [
//             Colors.blueAccent,
//             Colors.cyanAccent,
//           ])),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 20, right: 190),
//                 child: Text(
//                   "User Status",
//                   style: TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 20),
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               Expanded(
//                 child: Container(
//                   child: Padding(
//                     padding: const EdgeInsets.all(20),
//                     child: Row(
//                       children: [
//                         Expanded(
//                           child: Container(
//                             child: Column(
//                               children: [
//                                 Expanded(
//                                   flex: 10,
//                                   child: InfoGradientContainer(
//                                     Lineargradientcolor: true,
//                                     ttile: 'User Sattus',
//                                     clr: [
//                                       Colors.blueAccent,
//                                       Colors.cyanAccent,
//                                     ],
//                                     overlaycolor: Colors.cyan,
//                                     OnPressed: () {},
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: 6,
//                                   child: InfoGradientContainer(
//                                     Lineargradientcolor: false,
//                                     ttile: 'Battry',
//                                     clr: [
//                                       Colors.orangeAccent,
//                                       Colors.pinkAccent,
//                                     ],
//                                     overlaycolor: Colors.orangeAccent,
//                                     OnPressed: () {},
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Expanded(
//                           child: InfoGradientContainer(
//                             Lineargradientcolor: true,
//                             ttile: 'General',
//                             clr: [
//                               Colors.white,
//                               Colors.white,
//                             ],
//                             overlaycolor: Colors.cyanAccent,
//                             OnPressed: () {},
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
