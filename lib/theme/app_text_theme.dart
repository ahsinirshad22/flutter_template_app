import 'package:flutter_template/utils/export.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontFamily: "Effra",
      fontWeight: FontWeight.bold,
      color: CustomAppTheme.lightColors[AppColor.headingColor],
    ),
    bodyLarge: GoogleFonts.openSans(
      fontSize: 24,
      fontWeight: FontWeight.normal,
      color: CustomAppTheme.lightColors[AppColor.bodyColor1],
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontFamily: "Effra",
      fontWeight: FontWeight.bold,
      color: CustomAppTheme.darkColors[AppColor.headingColor],
    ),
    bodyLarge: GoogleFonts.openSans(
      fontSize: 24,
      fontWeight: FontWeight.normal,
      color: CustomAppTheme.darkColors[AppColor.bodyColor1],
    ),
  );
}

extension GetTextStyle on BuildContext {
  TextStyle effraTextStyle() {
    return Theme.of(this).textTheme.headlineLarge ?? const TextStyle();
  }

  TextStyle openSansTextStyle() {
    return Theme.of(this).textTheme.bodyLarge ?? const TextStyle();
  }
}
