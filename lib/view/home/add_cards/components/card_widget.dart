import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/assets/images/app_images.dart';
import 'package:payment_card_ui/assets/style/text_style.dart';

class CardWidget extends StatefulWidget {
  String image;
  String cardNumber;
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
    required this.cardNumber,
    required this.validityPeriod,
    required this.cardOwner,
    required this.moneyAmount,
    required this.iconImage,
    required this.gradinetColorFirst,
    required this.gradientColorSecond,
    required this.bankName,
    this.image ='',
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
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 18.h).r,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.bankName,
                  style: FontStyles.bankNameStyle,
                ),
                Icon(Icons.contactless_outlined,color: ConsColors.kWhite,)
              ],
            ),
            SizedBox(
              width: 50.w,
              height: 50.h,
              child: Image.asset(AppImages.chipset),
            ),
            Text(
              widget.cardNumber,
              style: FontStyles.cardStyle,
            ),
            Text(
              widget.validityPeriod,
              style: FontStyles.cardStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.cardOwner,
                  style: FontStyles.cardStyle,
                ),
                SizedBox(
                  width: 70.w,
                  height: 50.h,
                  child: widget.image.isEmpty ? null : Image.asset(
                    widget.image,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
