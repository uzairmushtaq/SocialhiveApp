// import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sleek_circular_slider/sleek_circular_slider.dart';
// import 'package:socialhive/widgets/colors/common_app.dart';
// import 'package:socialhive/widgets/battryinfo/battry_info_card.dart';
// import 'package:socialhive/widgets/genral_info/genral_info.dart';

// class GeneralInfo extends StatelessWidget {
//   const GeneralInfo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title: Image.asset(
//             'assets/image/Bold_Pink___Blue_Social_Media_S_Letter_Logo-removebg-preview (1).png'),
//         leading: GestureDetector(
//           onTap: () => Navigator.of(context).pop(),
//           child: Icon(
//             Icons.arrow_back,
//             color: AppColors.primaryColor,
//             size: 28,
//           ),
//         ),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(colors: [Colors.cyanAccent, Colors.cyan]),
//         ),
//         child: Column(
//           children: [
//             SizedBox(height: 30),
//             Align(
//               alignment: AlignmentDirectional.topStart,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Text(
//                   "General Info",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: Row(
//                 children: [
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Expanded(
//                           flex: 3,
//                           child: Two_value_card(
//                             textmain: 'Screen State',
//                             value: 'Unlock',
//                             clr: Colors.white,
//                             clr1: Colors.cyan,
//                           ),
//                         ),
//                         Expanded(
//                           flex: 6,
//                           child: Two_value_card_genral(
//                             textmain: 'System Volume',
//                             value: '0/7',
//                             clr: Colors.white,
//                             textmain1: 'Media Volume',
//                             value1: '4/7',
//                             clr1: null,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Column(
//                       children: [
//                         Expanded(
//                           flex: 6,
//                           child: Two_value_card_genral(
//                             textmain: 'Light Activity',
//                             value: 'Dim light',
//                             clr: Colors.white,
//                             textmain1: 'Light Inventory',
//                             value1: '4',
//                             clr1: null,
//                           ),
//                         ),
//                         Expanded(
//                           flex: 3,
//                           child: Two_value_card(
//                             textmain: 'Brightness',
//                             value: '27.25%',
//                             clr: Colors.white,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Align(
//               alignment: AlignmentDirectional.topStart,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Text(
//                   "My General Info",
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Expanded(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(20),
//                     topRight: Radius.circular(20),
//                   ),
//                 ),
//                 padding: const EdgeInsets.all(10),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Expanded(
//                             flex: 3,
//                             child: Two_value_card(
//                               textmain: 'Screen State',
//                               value: 'ON',
//                               clr: Color(0xffffb3ba),
//                               clr1: Colors.cyan,
//                             ),
//                           ),
//                           Expanded(
//                             flex: 6,
//                             child: Two_value_card_genral(
//                               textmain: 'System Volume',
//                               value: '0/7',
//                               clr: Color(0xffffb3ba),
//                               textmain1: 'Media Volume',
//                               value1: '4/7',
//                               clr1: null,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Expanded(
//                             flex: 6,
//                             child: Two_value_card_genral(
//                               textmain: 'Light Activity',
//                               value: 'Dim light',
//                               clr: Color(0xffffb3ba),
//                               textmain1: 'Light Inventory',
//                               value1: '4',
//                               clr1: null,
//                             ),
//                           ),
//                           Expanded(
//                             flex: 3,
//                             child: Two_value_card(
//                               textmain: 'Brightness',
//                               value: '27.25%',
//                               clr: Color(0xffffb3ba),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:socialhive/widgets/colors/common_app.dart';
import 'package:socialhive/widgets/battryinfo/battry_info_card.dart';
import 'package:socialhive/widgets/genral_info/genral_info.dart';

class GeneralInfo extends StatelessWidget {
  const GeneralInfo({super.key});

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
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.cyanAccent, Colors.cyan]),
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "General Info",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Two_value_card(
                            textmain: 'Screen State',
                            value: 'Unlock',
                            clr: Colors.white,
                            clr1: Colors.cyan,
                          ),
                        ),
                        Expanded(
                          flex: 6,
                          child: Two_value_card_genral(
                            textmain: 'System Volume',
                            value: '0/7',
                            clr: Colors.white,
                            textmain1: 'Media Volume',
                            value1: '4/7',
                            clr1: null,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 6,
                          child: Two_value_card_genral(
                            textmain: 'Light Activity',
                            value: 'Dim light',
                            clr: Colors.white,
                            textmain1: 'Light Inventory',
                            value1: '4',
                            clr1: null,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Two_value_card(
                            textmain: 'Brightness',
                            value: '27.25%',
                            clr: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My General Info",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.cyan),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 3,
                                  child: Two_value_card(
                                    textmain: 'Screen State',
                                    value: 'ON',
                                    clr: Color(0xffffb3ba),
                                    clr1: Colors.cyan,
                                  ),
                                ),
                                Expanded(
                                  flex: 6,
                                  child: Two_value_card_genral(
                                    textmain: 'System Volume',
                                    value: '0/7',
                                    clr: Color(0xffffb3ba),
                                    textmain1: 'Media Volume',
                                    value1: '4/7',
                                    clr1: null,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 6,
                                  child: Two_value_card_genral(
                                    textmain: 'Light Activity',
                                    value: 'Dim light',
                                    clr: Color(0xffffb3ba),
                                    textmain1: 'Light Inventory',
                                    value1: '4',
                                    clr1: null,
                                  ),
                                ),
                                Expanded(
                                  flex: 3,
                                  child: Two_value_card(
                                    textmain: 'Brightness',
                                    value: '27.25%',
                                    clr: Color(0xffffb3ba),
                                  ),
                                ),
                              ],
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
      ),
    );
  }
}
