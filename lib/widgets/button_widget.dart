import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/assets/style/text_style.dart';

class ButtonWidget extends StatelessWidget {
  final String buttonName;
  final Color buttoncolor;
  final VoidCallback onTap;
  const ButtonWidget({
    super.key,
    required this.buttonName,
    required this.onTap,
    this.buttoncolor = ConsColors.kGreen
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 58.h,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttoncolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        child: Center(
          child: Text(
            buttonName,
            style: GoogleFonts.urbanist(
              textStyle: FontStyles.button,
            ),
          ),
        ),
      ),
    );
  }
}
