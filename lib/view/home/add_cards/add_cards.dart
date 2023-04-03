import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/assets/style/form_style.dart';
import 'package:payment_card_ui/bloc/home/home_bloc_bloc.dart';
import 'package:payment_card_ui/bloc/home/home_bloc_state.dart';
import 'package:payment_card_ui/service/navigation_service.dart';
import 'package:payment_card_ui/view/home/add_cards/components/card_type.dart';
import 'package:payment_card_ui/view/home/add_cards/components/card_utils.dart';
import 'package:payment_card_ui/view/home/add_cards/components/card_widget.dart';
import 'package:payment_card_ui/view/home/add_cards/components/input_formatters.dart';
import 'package:payment_card_ui/widgets/abb_bar_widget.dart';

class AddCardsPage extends StatefulWidget {
  AddCardsPage({super.key});

  @override
  State<AddCardsPage> createState() => _AddCardsPageState();
}

class _AddCardsPageState extends State<AddCardsPage> {
  TextEditingController cardNumberController = TextEditingController();

  CardType cardType = CardType.Invalid;

  void getCardTypeFrmNum() {
    if (cardNumberController.text.length <= 6) {
      String cardNumber = CardUtils.getCleanedNumber(cardNumberController.text);
      CardType type = CardUtils.getCardTypeFrmNumber(cardNumber);
      if (type != cardType) {
        setState(
          () {
            cardType = type;
            print(cardType);
          },
        );
      }
    }
  }

  @override
  void initState() {
    cardNumberController.addListener(
      () {
        getCardTypeFrmNum();
      },
    );
    super.initState();
  }

  String cardNumber = '';

  String validityPeriod = '';

  String cardOwner = '';

  String moneyAmount = '';

  String iconImage = '';

  Color gradinetColorFirst = ConsColors.kPrimaryColor;

  Color gradientColorSecond = ConsColors.kWhite;

  String bankName = '';

  // String cardType = '';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
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
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.w),
              child: Column(
                children: [
                  CardWidget(
                    cardNumber: cardNumber,
                    validityPeriod: validityPeriod,
                    cardOwner: cardOwner,
                    moneyAmount: moneyAmount,
                    iconImage: iconImage,
                    gradinetColorFirst: gradinetColorFirst,
                    gradientColorSecond: gradientColorSecond,
                    bankName: bankName,
                    // cardType: cardType,
                  ),
                  Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: TextFormField(
                            controller: cardNumberController,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(19),
                              CardNumberInputFormatter(),
                            ],
                            decoration: getInputDecoration(
                              context: context,
                              label: "Card Number",
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: const Icon(Icons.credit_score_rounded),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
