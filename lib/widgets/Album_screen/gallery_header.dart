import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:socialhive/widgets/colors/common_app.dart';

class galleryheader extends StatelessWidget {
  const galleryheader({
    super.key,
    required this.context,
    required this.tuvalue,
    required this.tovalue,
    required this.username,
    required this.discrip,
    required this.editable,
  });

  final BuildContext context;
  final String tuvalue;
  final String tovalue;
  final String username;
  final String discrip;
  final bool editable;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 325,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xfffdebc0), Color(0xfffdebc0)]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: Offset(5, 5), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 230,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.yellow, Colors.amber]),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(5, 5), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Gallery",
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                CircularProfileAvatar(
                  '',
                  initialsText: Text("+"),
                  backgroundColor: AppColors.primaryColor,
                  elevation: 2,
                  radius: 40,
                ),
                Text(
                  username,
                  style: GoogleFonts.roboto(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                  ),
                ),
                Text(
                  discrip,
                  style: GoogleFonts.lato(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Total Upload",
                        style: GoogleFonts.roboto(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        tuvalue,
                        style: GoogleFonts.roboto(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      editable
                          ? GestureDetector(
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: AppColors.primaryColor,
                                    shape: BoxShape.circle),
                                child: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                ),
                              ),
                              onTap: () {
                                AwesomeDialog(
                                        context: context,
                                        animType: AnimType.scale,
                                        dialogType: DialogType.noHeader,
                                        body: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(10),
                                            child: TextField(
                                              autofocus: false,
                                              keyboardType:
                                                  TextInputType.multiline,
                                              maxLines: null,
                                              minLines: 2,
                                              textAlign: TextAlign.start,
                                              textAlignVertical:
                                                  TextAlignVertical.center,
                                              decoration: InputDecoration(
                                                filled: false,
                                                labelText:
                                                    "Enter Album Discription",
                                                hintStyle: TextStyle(),
                                                contentPadding: EdgeInsets.only(
                                                    top: 5, left: 5),
                                                floatingLabelBehavior:
                                                    FloatingLabelBehavior.never,
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    borderSide: BorderSide(
                                                      color: Colors.amber,
                                                      // Use primary color here
                                                      width: 5,
                                                    )),
                                              ),
                                            ),
                                          ),
                                        ),
                                        btnOkText: 'Confirm Caption',
                                        btnOkColor: AppColors.primaryColor,
                                        btnOkOnPress: () {})
                                    .show();
                              },
                            )
                          : Container(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Time Opened",
                        style: GoogleFonts.roboto(
                          color: Colors.black45,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        tovalue,
                        style: GoogleFonts.roboto(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
