import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:google_fonts/google_fonts.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color orangeClr = Color(0xCFFF8746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const Color black = Colors.black;
const Color teal = Colors.teal;
const Color grey = Colors.grey;
const Color red = Colors.red;
const Color blueGrey = Colors.blueGrey;
const Color transparent = Colors.transparent;


const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);

const double fontXXL = 30.0;
const double fontXL = 26.0;
const double fontxL = 20.0;
const double fontL = 18.0;

class Themes {
  static final light = ThemeData(
      primaryColor: primaryClr,
      backgroundColor: white,
      brightness: Brightness.light);

  static final dark = ThemeData(
    primaryColor: darkGreyClr,
    backgroundColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}

TextStyle get bigHeadingStyle {
  return TextStyle(
    color: Get.isDarkMode ? white : black,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Lato',
  );
}

TextStyle get headingStyle {
  return TextStyle(
    color: Get.isDarkMode ? white : black,
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Lato',
  );
}

TextStyle get subHeadingStyle {
  return TextStyle(
    color: Get.isDarkMode ? white : black,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Lato',
  );
}

TextStyle get titleStyle {
  return TextStyle(
    color: Get.isDarkMode ? white : black,
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    fontFamily: 'Lato',
  );
}

TextStyle get subTitleStyle {
  return TextStyle(
    color: Get.isDarkMode ? white : black,
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'Lato',
  );
}

TextStyle get bodyStyle {
  return TextStyle(
    color: Get.isDarkMode ? white : black,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'Lato',
  );
}

TextStyle get body2Style {
  return TextStyle(
    color: Get.isDarkMode ? Colors.grey[200] : black,
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    fontFamily: 'Lato',
  );
}

TextStyle get dateTextStyle {
  return const TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: grey,
    fontFamily: 'Lato',
  );
}

TextStyle get dayTextStyle {
  return const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: grey,
    fontFamily: 'Lato',
  );
}

TextStyle get monthTextStyle {
  return const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: grey,
    fontFamily: 'Lato',
  );
}

// TextStyle get bigHeadingStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//       color: Get.isDarkMode ? white : black,
//       fontSize: 30.0,
//       fontWeight: FontWeight.bold,
//     ),
//   );
// }
// TextStyle get headingStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//       color: Get.isDarkMode ? white : black,
//       fontSize: 24.0,
//       fontWeight: FontWeight.bold,
//     ),
//   );
// }
// TextStyle get subHeadingStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//       color: Get.isDarkMode ? white : black,
//       fontSize: 20.0,
//       fontWeight: FontWeight.bold,
//     ),
//   );
// }
// TextStyle get titleStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//       color: Get.isDarkMode ? white : black,
//       fontSize: 18.0,
//       fontWeight: FontWeight.bold,
//     ),
//   );
// }
// TextStyle get subTitleStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//       color: Get.isDarkMode ? white : black,
//       fontSize: 16.0,
//       fontWeight: FontWeight.w400,
//     ),
//   );
// }
// TextStyle get bodyStyle {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//       color: Get.isDarkMode ? white : black,
//       fontSize: 14.0,
//       fontWeight: FontWeight.w400,
//     ),
//   );
// }
// TextStyle get body2Style {
//   return GoogleFonts.lato(
//     textStyle: TextStyle(
//       color: Get.isDarkMode ? Colors.grey[200] : black,
//       fontSize: 14.0,
//       fontWeight: FontWeight.w400,
//     ),
//   );
// }
// TextStyle get dateTextStyle {
//   return GoogleFonts.lato(
//     textStyle: const TextStyle(
//       fontSize: 20,
//       fontWeight: FontWeight.w600,
//       color: grey,
//     ),
//   );
// }
// TextStyle get dayTextStyle {
//   return GoogleFonts.lato(
//     textStyle: const TextStyle(
//       fontSize: 16,
//       fontWeight: FontWeight.w600,
//       color: grey,
//     ),
//   );
// }
// TextStyle get monthTextStyle {
//   return GoogleFonts.lato(
//     textStyle: const TextStyle(
//       fontSize: 12,
//       fontWeight: FontWeight.w600,
//       color: grey,
//     ),
//   );
//}
