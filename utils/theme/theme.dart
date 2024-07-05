import 'package:shop_smart/utils/contants/exports.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      useMaterial3: true,
      fontFamily: 'Poppins',
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: TAppbarTheme.lightAppbarTheme,
      textTheme: TTextTheme.lightTextTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheet,
      checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
      chipTheme: TChipTheme.lightChipTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
      elevatedButtonTheme: TElevatedBtnTheme.lightElevatedBtnTheme);
  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      fontFamily: 'Poppins',
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      appBarTheme: TAppbarTheme.darkAppbarTheme,
      chipTheme: TChipTheme.darkChipTheme,
      checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
      inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheet,
      elevatedButtonTheme: TElevatedBtnTheme.darkElevatedBtnTheme);
}
