import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/data/models/card_model/card_model.dart';
import 'package:payment_card_ui/view/home/add_cards/components/card_widget.dart';

class CardsPage extends StatelessWidget {
  final List<CardModel> cards;
  const CardsPage({required this.cards, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      backgroundColor: ConsColors.kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.w),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: CardWidget(
                  cardNumber: cards[index].cardNumber,
                  validityPeriod: cards[index].carvalidityPerioddId,
                  cardOwner: cards[index].cardOwner,
                  moneyAmount: cards[index].moneyAmount,
                  iconImage: cards[index].iconImage,
                  gradinetColorFirst: ConsColors.kGreen,
                  gradientColorSecond: ConsColors.kPrimaryColor,
                  bankName: cards[index].bankName),
            );
          },
          itemCount: cards.length,
        ),
      ),
    );
  }
}
