import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:socialhive/widgets/colors/common_app.dart';
import 'package:socialhive/widgets/battryinfo/battry_info_card.dart';

class BatteryInfo extends StatelessWidget {
  const BatteryInfo({super.key});

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
          gradient: LinearGradient(
            colors: [
              Colors.orangeAccent,
              Colors.pinkAccent,
            ],
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Battery Status:",
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
                          child: Two_value_card(
                            textmain: 'Status',
                            value: 'Discharging',
                          ),
                        ),
                        Expanded(
                          child: Two_value_card(
                            textmain: 'Charging Type',
                            value: '--',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Two_value_card(
                            textmain: 'Percentage',
                            subwidget: SleekCircularSlider(
                              min: 0,
                              max: 100,
                              appearance: CircularSliderAppearance(
                                customColors: CustomSliderColors(
                                  progressBarColor: Colors.pink,
                                ),
                                infoProperties: InfoProperties(
                                  mainLabelStyle: GoogleFonts.nunito(
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                size: 80,
                                customWidths: CustomSliderWidths(
                                  progressBarWidth: 8,
                                ),
                              ),
                            ),
                            value: '',
                          ),
                        ),
                        Expanded(
                          child: Two_value_card(
                            textmain: 'Temper',
                            value: '15.0',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Two_value_card(
                            textmain: 'Battery Health',
                            value: 'Good',
                          ),
                        ),
                        Expanded(
                          child: Two_value_card(
                            textmain: 'Technology',
                            value: 'Li-Poly',
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
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Battery Status:",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Two_value_card(
                                    textmain: 'Status',
                                    value: 'Discharging',
                                    clr: Colors.greenAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Two_value_card(
                                    textmain: 'Charging Type',
                                    value: '--',
                                    clr: Colors.greenAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Two_value_card(
                                    textmain: 'Percentage',
                                    clr: Colors.greenAccent,
                                    subwidget: SleekCircularSlider(
                                      min: 0,
                                      max: 100,
                                      appearance: CircularSliderAppearance(
                                        customColors: CustomSliderColors(
                                          progressBarColor: Colors.pink,
                                        ),
                                        infoProperties: InfoProperties(
                                          mainLabelStyle: GoogleFonts.nunito(
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        size: 80,
                                        customWidths: CustomSliderWidths(
                                          progressBarWidth: 8,
                                        ),
                                      ),
                                    ),
                                    value: '',
                                  ),
                                ),
                                Expanded(
                                  child: Two_value_card(
                                    textmain: 'Temp',
                                    value: '15.0',
                                    clr: Colors.greenAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Two_value_card(
                                    textmain: 'Battery Health',
                                    value: 'Good',
                                    clr: Colors.greenAccent,
                                  ),
                                ),
                                Expanded(
                                  child: Two_value_card(
                                    textmain: 'Technology',
                                    value: 'Li-Poly',
                                    clr: Colors.greenAccent,
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



// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:sleek_circular_slider/sleek_circular_slider.dart';
// import 'package:socialhive/widgets/colors/common_app.dart';
// import 'package:socialhive/widgets/battryinfo/battry_info_card.dart';

// class BatteryInfo extends StatelessWidget {
//   const BatteryInfo({super.key});

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
//             onTap: Navigator.of(context).pop,
//             child: Icon(
//               Icons.arrow_back,
//               color: AppColors.primaryColor,
//               size: 28,
//             )),
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//             gradient: LinearGradient(colors: [
//           Colors.orangeAccent,
//           Colors.pinkAccent,
//         ])),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 30,
//             ),
//             Align(
//               alignment: AlignmentDirectional.topStart,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Text(
//                   " Battry Status:",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: Container(
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Two_value_card(
//                                 textmain: 'Status',
//                                 value: 'Discharging',
//                               ),
//                             ),
//                             Expanded(
//                               child: Two_value_card(
//                                 textmain: 'Charging Type',
//                                 value: '--',
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         width: double.infinity,
//                         child: Container(
//                           child: Column(
//                             children: [
//                               Expanded(
//                                 flex: 2,
//                                 child: Two_value_card(
//                                   textmain: 'Percentage',
//                                   subwidget: SleekCircularSlider(
//                                     min: 0,
//                                     max: 100,
//                                     appearance: CircularSliderAppearance(
//                                         customColors: CustomSliderColors(
//                                             progressBarColor: Colors.pink),
//                                         infoProperties: InfoProperties(
//                                             mainLabelStyle: GoogleFonts.nunito(
//                                                 fontWeight: FontWeight.w400)),
//                                         size: 80,
//                                         customWidths: CustomSliderWidths(
//                                             progressBarWidth: 8)),
//                                   ),
//                                   value: '',
//                                 ),
//                               ),
//                               Expanded(
//                                 child: Two_value_card(
//                                   textmain: 'Temprature ',
//                                   value: '15.0',
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Two_value_card(
//                                 textmain: 'Battery Health',
//                                 value: 'Good',
//                               ),
//                             ),
//                             Expanded(
//                               child: Two_value_card(
//                                 textmain: 'Technology',
//                                 value: 'Li-Poly',
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Align(
//               alignment: AlignmentDirectional.topStart,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 20),
//                 child: Text(
//                   "My Battry Status :",
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 18,
//                       color: Colors.white),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Expanded(
//               child: Container(
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Container(
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Two_value_card(
//                                 textmain: 'Status',
//                                 value: 'Discharging',
//                                 clr: Colors.greenAccent,
//                               ),
//                             ),
//                             Expanded(
//                               child: Two_value_card(
//                                 textmain: 'Charging Type',
//                                 value: '--',
//                                 clr: Colors.greenAccent,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         child: Column(
//                           children: [
//                             Expanded(
//                               flex: 2,
//                               child: Two_value_card(
//                                 textmain: 'Percentage',
//                                 clr: Colors.greenAccent,
//                                 subwidget: SleekCircularSlider(
//                                   min: 0,
//                                   max: 100,
//                                   appearance: CircularSliderAppearance(
//                                       customColors: CustomSliderColors(
//                                           progressBarColor: Colors.pink),
//                                       infoProperties: InfoProperties(
//                                           mainLabelStyle: GoogleFonts.nunito(
//                                               fontWeight: FontWeight.w400)),
//                                       size: 80,
//                                       customWidths: CustomSliderWidths(
//                                           progressBarWidth: 8)),
//                                 ),
//                                 value: '',
//                               ),
//                             ),
//                             Expanded(
//                               child: Two_value_card(
//                                 textmain: 'Temprature ',
//                                 value: '15.0',
//                                 clr: Colors.greenAccent,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Container(
//                         child: Column(
//                           children: [
//                             Expanded(
//                               child: Two_value_card(
//                                 textmain: 'Battery Health',
//                                 value: 'Good',
//                                 clr: Colors.greenAccent,
//                               ),
//                             ),
//                             Expanded(
//                               child: Two_value_card(
//                                 textmain: 'Technology',
//                                 value: 'Li-Poly',
//                                 clr: Colors.greenAccent,
//                               ),
//                             ),
//                           ],
//                         ),
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
