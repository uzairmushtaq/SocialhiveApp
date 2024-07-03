import 'package:flutter/material.dart';

import 'package:socialhive/widgets/colors/common_app.dart';

class commontextfield extends StatelessWidget {
  final String hinttext;
  final bool obscuretext;
  final TextInputType keyboardtype;
  final IconData icons;
  const commontextfield(
      {required this.icons,
      required this.hinttext,
      required this.obscuretext,
      required this.keyboardtype});

  @override
  Widget build(BuildContext context) {
    return TextField(
        autofocus: false,
        obscureText: obscuretext,
        keyboardType: keyboardtype,
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.center,
        decoration: InputDecoration(
            prefixIcon: Icon(icons, size: 25, color: AppColors.primaryColor),
            hintText: hinttext,
            hintStyle: TextStyle(color: AppColors.primaryColor),
            contentPadding: EdgeInsets.only(top: 5),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.amber,
                // Use primary color here
                width: 5,
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(10),
                //   borderSide: BorderSide(
                //     color: AppColors.primaryColor, // Use primary color here
                //     width: 5,
                //   ),
              ),
            )));
  }
}
// import 'package:flutter/material.dart';
// import 'package:socialhive/widgets/colors/common_app.dart';

// class CommonTextField extends StatelessWidget {
//   final String hintText;
//   final bool obscureText;
//   final TextInputType keyboardType;
//   final IconData icon;

//   const CommonTextField({
//     required this.icon,
//     required this.hintText,
//     required this.obscureText,
//     required this.keyboardType,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       autofocus: false,
//       obscureText: obscureText,
//       keyboardType: keyboardType,
//       textAlign: TextAlign.start,
//       textAlignVertical: TextAlignVertical.center,
//       decoration: InputDecoration(
//         prefixIcon: Icon(
//           icon,
//           size: 25,
//           color: AppColors.primaryColor,
//         ),
//         fillColor: Colors.white,
//         filled: true,
//         hintText: hintText,
//         contentPadding: EdgeInsets.only(top: 5),
//         floatingLabelBehavior: FloatingLabelBehavior.never,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(15),
//           borderSide: BorderSide(
//             color: AppColors.primaryColor, // Use primary color here
//             width: 3,
//           ),
//         ),
//       ),
//     );
//   }
// }
