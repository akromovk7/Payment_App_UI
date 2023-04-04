import 'package:flutter/cupertino.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/assets/constants/fontsize_const.dart';

class FontStyles {
  static TextStyle bankNameStyle = TextStyle(color: ConsColors.kWhite, fontSize: FontConst.kMaxFont, fontWeight: FontWeight.bold);
  static TextStyle cardStyle = TextStyle(color: ConsColors.kWhite, fontSize: FontConst.kCardFont, fontWeight: FontWeight.bold);
  static TextStyle inputNumber = TextStyle(color: ConsColors.kWhite);
  static TextStyle button = TextStyle(color: ConsColors.kWhite,fontSize: FontConst.kMedFont,fontWeight: FontWeight.w700);
}
