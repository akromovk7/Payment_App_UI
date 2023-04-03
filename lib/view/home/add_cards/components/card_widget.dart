import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/style/text_style.dart';

class CardWidget extends StatefulWidget {
  String? cardNumber;
  String validityPeriod;
  String cardOwner;
  String moneyAmount;
  String iconImage;
  Color gradinetColorFirst;
  Color gradientColorSecond;
  String bankName;
  String? cardType;
  CardWidget({
    super.key,
    this.cardNumber,
    required this.validityPeriod,
    required this.cardOwner,
    required this.moneyAmount,
    required this.iconImage,
    required this.gradinetColorFirst,
    required this.gradientColorSecond,
    required this.bankName,
    this.cardType,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24.r),
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [widget.gradinetColorFirst, widget.gradientColorSecond],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 12.h).r,
        child: Column(
          children: [Text(widget.bankName,style: FontStyles.bankNameStyle,)],
        ),
      ),
    );
  }
}
