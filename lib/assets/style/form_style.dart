import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/assets/constants/fontsize_const.dart';

InputDecoration getInputDecoration(
    {required BuildContext context, required String label, required Widget prefixIcon, Widget? suffixIcon}) {
  return InputDecoration(
    prefixIcon: prefixIcon,
    suffixIcon: suffixIcon,
    label: Text(
      label,
      style: Theme.of(context)
          .textTheme
          .labelMedium!
          .copyWith(fontSize: FontConst.kMinFont, color: ConsColors.kLabel),
    ),
    contentPadding: const EdgeInsets.only(left: 12),
    hintStyle: Theme.of(context)
        .textTheme
        .labelMedium!
        .copyWith(fontSize: FontConst.kMinFont, color: ConsColors.kLabel),
    helperStyle: Theme.of(context).textTheme.labelSmall,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.r),
      ),
      borderSide: const BorderSide(
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.r),
      ),
      borderSide: BorderSide(width: 1, color: Theme.of(context).cardColor),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.r),
      ),
      borderSide: BorderSide(
        width: 1,
        color: Theme.of(context).cardColor,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15.r),
      ),
      borderSide: BorderSide(
        width: 1,
        color: Theme.of(context).cardColor,
      ),
    ),
  );
}
