import 'package:flutter/material.dart';
import 'package:socialhive/widgets/battryinfo/battry_info_card.dart';

import 'package:socialhive/widgets/colors/common_app.dart';

class DeviceSpace extends StatelessWidget {
  const DeviceSpace({super.key});

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
          gradient: LinearGradient(colors: [
            Colors.cyan,
            Colors.cyanAccent,
          ]),
        ),
        child: Column(
          children: [
            SizedBox(height: 30),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "Device Space Information",
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
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                              flex: 3,
                              child: Container(
                                child: Two_value_card(
                                  textmain: 'Total Ram',
                                  value: '5.37 GB',
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Container(
                                child: Two_value_card(
                                  textmain: 'Refresh Rate',
                                  value: '60 HZ',
                                ),
                              )),
                          Expanded(
                              flex: 4,
                              child: Container(
                                child: Two_value_card(
                                  textmain: 'FingerPrint Sansor',
                                  value: 'Pressent',
                                ),
                              )),
                          Expanded(
                              flex: 4,
                              child: Container(
                                child: Two_value_card(
                                  textmain: 'FingerPri Sensor',
                                  value: 'Yes',
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Container(
                                child: Container(
                                    child: Two_value_card(
                                  textmain: 'Internal Memory',
                                  value: '56.36/11.0.06 GB',
                                )),
                              )),
                          Expanded(
                            flex: 4,
                            child: Container(
                                child: Two_value_card(
                              textmain: 'External Memory',
                              value: 'N/A',
                            )),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                                child: Two_value_card(
                              textmain: 'Screen Size',
                              value: '5.35 inches',
                            )),
                          ),
                          Expanded(
                              flex: 3,
                              child: Container(
                                child: Two_value_card(
                                  textmain: 'Resulation',
                                  value: '213*1080',
                                ),
                              )),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
