import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class _AppColors {
  static const primaryColor = Color(0xff5D5FEF);
  static const secondaryColor = Color(0xff74FBDE);
  static const borderColor = Color(0xFFCECECE);
  static const subtleColor = Color(0xFF1D1D1D);
  static const goldColor = Color(0xFFFFD233);
  static const greyColor = Color(0xFF616161);
  static const grey5Color = Color(0xFFC4C4C4);
  static const grey25Color = Color(0xFFF0F0F0);

}

extension AppContext on BuildContext {
  ThemeData get theme => Theme.of(this).copyWith(
      textTheme: GoogleFonts.notoSansKrTextTheme(),
      scaffoldBackgroundColor: Color(0xFFEEEEEE),
      appBarTheme: AppBarTheme(
        elevation: 1,
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        shadowColor: Color(0x00000026).withValues(alpha: 0.24),
      ));
  Color get primary => _AppColors.primaryColor;
  Color get secondary => _AppColors.secondaryColor;
  Color get subtle => _AppColors.subtleColor;
  Color get gold => _AppColors.goldColor;
  Color get grey => _AppColors.greyColor;
  Color get grey5 => _AppColors.grey5Color;
  Color get grey25 => _AppColors.grey25Color;

  TextStyle get logoText => GoogleFonts.roboto(
        color: _AppColors.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 24,
      );
  TextStyle get primaryText => GoogleFonts.notoSans();
  Border get primaryBorder => Border.all(color: _AppColors.borderColor);
}

extension AppTextStyles on TextStyle {
  TextStyle get primary => copyWith(color: _AppColors.primaryColor);
  TextStyle get bold => copyWith(fontWeight: FontWeight.w700);
  TextStyle get medium => copyWith(fontWeight: FontWeight.w500);
  TextStyle get regular => copyWith(fontWeight: FontWeight.w400);

  TextStyle get s24 => copyWith(fontSize: 24);
  TextStyle get s18 => copyWith(fontSize: 18);
  TextStyle get s14 => copyWith(fontSize: 14);
  TextStyle get s12 => copyWith(fontSize: 12);
  TextStyle get s10 => copyWith(fontSize: 10);
  
  TextStyle get grey => copyWith(color: _AppColors.greyColor);
  TextStyle get grey5 => copyWith(color: _AppColors.grey5Color);
  TextStyle get subtle => copyWith(color: _AppColors.subtleColor);
  TextStyle get gold => copyWith(color: _AppColors.goldColor);
}
