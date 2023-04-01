import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/service/navigation_service.dart';
import 'package:payment_card_ui/widgets/abb_bar_widget.dart';

class AddCards extends StatelessWidget {
  const AddCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConsColors.kBackgroundColor,
      appBar: AppBarWidget(
        title: 'Add a new Card',
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            NavigationService.instance.pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w),
        child: Column(
          children: [
            Form(
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      LengthLimitingTextInputFormatter(19)
                    ],
                    decoration: InputDecoration(
                      hintText: "Card number",
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.h),
                        child: const Icon(Icons.credit_score_rounded),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
