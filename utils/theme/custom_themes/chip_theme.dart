import 'package:shop_smart/utils/contants/exports.dart';

class TChipTheme {
  TChipTheme._();

  // light chip theme
  static ChipThemeData lightChipTheme = ChipThemeData(
      disabledColor: Colors.grey.withOpacity(0.4),
      labelStyle: const TextStyle(color: Colors.black),
      selectedColor: basicPprimaryColor,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: Colors.white);

  // Dark chip theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
      disabledColor: Colors.grey,
      labelStyle: TextStyle(color: Colors.white),
      selectedColor: basicPprimaryColor,
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      checkmarkColor: Colors.white);
}
