import 'package:flutter/material.dart';
import 'package:socialhive/widgets/colors/common_app.dart';
import 'package:socialhive/widgets/userstatus/user_info_card.dart';
import 'package:socialhive/widgets/userstatus/user_status_card_2nd.dart';

// ignore: must_be_immutable
class UserStatus extends StatefulWidget {
  UserStatus({super.key});

  @override
  State<UserStatus> createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  List<String> status = ['AWAY', 'DRIVING', 'MEETING', 'DONT DISTURB'];
  List<String> status1 = ['EATING', 'OUTDOOR', 'HOME', 'SLEEPING'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
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
                )),
          )),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blueAccent,
            Colors.cyanAccent,
          ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "User Status",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Adding the user status and other information at the top
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UserInfoCard(
                      title: "User is",
                      value: "ONLINE",
                    ),
                    UserInfoCard(
                      title: "User Status",
                      value: "DRIVING",
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: UserInfoCard(
                  title: "Last App Action",
                  value: "2 minutes ago",
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Text(
                      "Last Updated:",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "1 min ago",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 120),
                      child: Row(
                        children: [
                          Text(
                            "My Status",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "EATING",
                            style: TextStyle(
                                color: Colors.cyan,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: status.length,
                        itemBuilder: (context, index) {
                          return User_status_card_2nd(
                            value: status[index],
                          );
                        },
                      ),
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: status1.length,
                        itemBuilder: (context, index) {
                          return User_status_card_2nd(
                            value: status1[index],
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:socialhive/widgets/colors/common_app.dart';
// import 'package:socialhive/widgets/deviceinfo/info_gradient_container.dart';
// import 'package:socialhive/widgets/userstatus/user_info_card.dart';
// import 'package:socialhive/widgets/userstatus/user_status_card_2nd.dart';

// // ignore: must_be_immutable
// class UserStatus extends StatelessWidget {
//   UserStatus({super.key});

//   List<String> status = ['AWAY', 'DRIVING ', 'METTING', 'DONT DISTURB'];
//   List<String> status1 = ['EATING', 'OUTDOOT', 'HOME', 'SLEEPING'];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//           preferredSize: Size.fromHeight(60),
//           child: AppBar(
//             centerTitle: true,
//             elevation: 0,
//             backgroundColor: Colors.white,
//             title: Image.asset(
//                 'assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png'),
//             leading: GestureDetector(
//                 onTap: Navigator.of(context).pop,
//                 child: Icon(
//                   Icons.arrow_back,
//                   color: AppColors.primaryColor,
//                   size: 28,
//                 )),
//           )),
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
//                                     onPressed: () {},
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
//                                     onPressed: () {},
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
//                             onPressed: () {},
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     "Last Sence Few minutes ago",
//                     style: TextStyle(
//                         color: Colors.white, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 20,
//                   ),
//                 ],
//               ),
//               Expanded(
//                 child: Container(
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(40),
//                           topRight: Radius.circular(40))),
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 120),
//                         child: Row(
//                           children: [
//                             Text(
//                               "My Status",
//                               style: TextStyle(
//                                   color: Colors.grey,
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                             SizedBox(
//                               width: 5,
//                             ),
//                             Text(
//                               "EATING",
//                               style: TextStyle(
//                                   color: Colors.cyan,
//                                   fontSize: 14,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Expanded(
//                           child: ListView.builder(
//                               scrollDirection: Axis.horizontal,
//                               itemCount: 4,
//                               itemBuilder: (context, index) {
//                                 return Column(
//                                   children: [
//                                     User_status_card_2nd(
//                                       value: 'Away',
//                                     ),
//                                     User_status_card_2nd(
//                                       value: 'away',
//                                     )
//                                   ],
//                                 );
//                               }))
//                     ],
//                   ),
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
