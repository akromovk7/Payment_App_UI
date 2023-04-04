import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/assets/images/app_images.dart';
import 'package:payment_card_ui/assets/style/form_style.dart';
import 'package:payment_card_ui/assets/style/text_style.dart';
import 'package:payment_card_ui/bloc/home/home_bloc_bloc.dart';
import 'package:payment_card_ui/bloc/home/home_bloc_event.dart';
import 'package:payment_card_ui/bloc/home/home_bloc_state.dart';
import 'package:payment_card_ui/core/extensions/size_extensions.dart';
import 'package:payment_card_ui/data/models/card_model/card_model.dart';
import 'package:payment_card_ui/service/navigation_service.dart';
import 'package:payment_card_ui/view/home/add_cards/components/card_type.dart';
import 'package:payment_card_ui/view/home/add_cards/components/card_utils.dart';
import 'package:payment_card_ui/view/home/add_cards/components/card_widget.dart';
import 'package:payment_card_ui/view/home/add_cards/components/input_formatters.dart';
import 'package:payment_card_ui/widgets/abb_bar_widget.dart';
import 'package:payment_card_ui/widgets/button_widget.dart';

class AddCardsPage extends StatefulWidget {
  AddCardsPage({super.key});

  @override
  State<AddCardsPage> createState() => _AddCardsPageState();
}

class _AddCardsPageState extends State<AddCardsPage> {
  final formKey = GlobalKey<FormState>();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController cardValidityPeriodController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController bankNameController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

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

  String cardImage = '';

  String cardNumber = '';

  String validityPeriod = '';

  String cardOwner = '';

  String moneyAmount = '';

  String iconImage = '';

  Color gradinetColorFirst = ConsColors.kPrimaryColor;

  Color gradientColorSecond = ConsColors.kGreen;

  Color gradientColornew = ConsColors.kTransparent;

  String bankName = '';

  // String cardType = '';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
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
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0.w),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10.h),
                    child: CardWidget(
                      image: cardImage,
                      cardNumber: cardNumber,
                      validityPeriod: validityPeriod,
                      cardOwner: cardOwner,
                      moneyAmount: moneyAmount,
                      iconImage: iconImage,
                      gradinetColorFirst: gradinetColorFirst,
                      gradientColorSecond: gradientColorSecond,
                      bankName: bankName,
                      cardType: cardType.name,
                    ),
                  ),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: TextFormField(
                            onChanged: (bank) {
                              bankName = bank;
                              setState(() {});
                            },
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(20)
                            ],
                            controller: bankNameController,
                            keyboardType: TextInputType.name,
                            style: FontStyles.inputNumber,
                            decoration: getInputDecoration(
                              context: context,
                              label: "Bank Name",
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: const Icon(Icons.attach_money_rounded),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.h),
                          child: TextFormField(
                            controller: cardNumberController,
                            keyboardType: TextInputType.number,
                            style: FontStyles.inputNumber,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: validateCardNum,
                            onChanged: (number) {
                              cardNumber = number;
                              setImages(number.trim());
                              setState(() {});
                            },
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(16),
                              CardNumberInputFormatter(),
                            ],
                            decoration: getInputDecoration(
                              context: context,
                              label: "Card Number",
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                    height: 30.h,
                                    width: 50.w,
                                    child: cardImage.isEmpty
                                        ? null
                                        : Image.asset(cardImage)),
                              ),
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: const Icon(Icons.credit_score_rounded),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: FontStyles.inputNumber,
                            controller: fullNameController,
                            onChanged: (name) {
                              cardOwner = name;
                              setState(() {});
                            },
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(27)
                            ],
                            decoration: getInputDecoration(
                              context: context,
                              label: "Full Name",
                              prefixIcon: Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.h),
                                child: const Icon(Icons.person_rounded),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: FontStyles.inputNumber,
                                  controller: cvvController,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: validateCVV,
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(4),
                                  ],
                                  decoration: getInputDecoration(
                                    context: context,
                                    label: "CVV",
                                    prefixIcon: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: const Icon(Icons.pin_rounded),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: context.width * 0.05,
                              ),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: FontStyles.inputNumber,
                                  controller: cardValidityPeriodController,
                                  autovalidateMode:
                                      AutovalidateMode.onUserInteraction,
                                  validator: validateDate,
                                  onChanged: (time) {
                                    validityPeriod = time;
                                    setState(() {});
                                  },
                                  inputFormatters: [
                                    FilteringTextInputFormatter.digitsOnly,
                                    LengthLimitingTextInputFormatter(4),
                                    CardMonthInputFormatter()
                                  ],
                                  decoration: getInputDecoration(
                                    context: context,
                                    label: "MM/YY",
                                    prefixIcon: Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 10.h),
                                      child: const Icon(
                                          Icons.calendar_month_rounded),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: Row(
                            children: [
                              Expanded(
                                child: ButtonWidget(
                                  buttonName: "Change Color",
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => AlertDialog(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15.r),
                                        ),
                                        content: SingleChildScrollView(
                                          child: BlockPicker(
                                            pickerColor: gradientColornew,
                                            onColorChanged: changeColor,
                                          ),
                                        ),
                                        actions: <Widget>[
                                          ButtonWidget(
                                              buttonName: "CLOSE",
                                              onTap: () {
                                                setState(() {
                                                  if (gradinetColorFirst ==
                                                      ConsColors
                                                          .kPrimaryColor) {
                                                    gradinetColorFirst =
                                                        gradientColornew;
                                                  } else {
                                                    gradientColorSecond =
                                                        gradientColornew;
                                                  }
                                                });
                                                NavigationService.instance
                                                    .pop();
                                              },
                                              buttoncolor: gradientColornew)
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              SizedBox(
                                width: context.width * 0.05,
                              ),
                              Expanded(
                                child: ButtonWidget(
                                  buttonName: "Change Image",
                                  onTap: () {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10.h),
                          child: ButtonWidget(
                            buttonName: "Save Card",
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState?.save();
                                if (bankNameController.text.isNotEmpty &&
                                    cardNumberController.text.isNotEmpty &&
                                    fullNameController.text.isNotEmpty &&
                                    cvvController.text.isNotEmpty &&
                                    cardValidityPeriodController
                                        .text.isNotEmpty) {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  BlocProvider.of<HomeBloc>(context).add(
                                    AddCard(
                                      card: CardModel(
                                          moneyAmount: moneyAmount,
                                          cardId: -1,
                                          cardNumber: cardNumberController.text,
                                          validityPeriod:
                                              cardValidityPeriodController.text,
                                          cardOwner: fullNameController.text,
                                          iconImage: cardImage,
                                          gradinetColorFirst: gradinetColorFirst
                                              .toString()
                                              .substring(10, 16),
                                          gradientColorSecond:
                                              gradientColorSecond
                                                  .toString()
                                                  .substring(10, 16),
                                          cardType: cardType.name,
                                          bankName: bankNameController.text),
                                    ),
                                  );
                                  NavigationService.instance.pop();
                                }
                              }
                            },
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

  void changeColor(Color color) {
    setState(() => gradientColornew = color);
  }

  static String getCleanedNumber(String text) {
    RegExp regExp = RegExp(r"[^0-9]");
    return text.replaceAll(regExp, '');
  }

  static String? validateCardNum(String? input) {
    if (input == null || input.isEmpty) {
      return "This field is required";
    }

    input = getCleanedNumber(input);

    if (input.length < 15) {
      return "Card is invalid";
    }

    int sum = 0;
    int length = input.length;
    for (int i = 0; i < length; i++) {
      // get digits in reverse order
      int digit = int.parse(input[length - i - 1]);

      // every 2nd number multiply with 2
      if (i % 2 == 1) {
        digit *= 2;
      }
      sum += digit > 9 ? (digit - 9) : digit;
    }

    if (sum % 10 == 0) {
      return null;
    }
    return "Card is invalid";
  }

  static String? validateCVV(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required";
    }
    if (value.length < 3 || value.length > 4) {
      return "CVV is invalid";
    }
    return null;
  }

  static String? validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return "This field is required";
    }
    int year;
    int month;
    if (value.contains(RegExp(r'(/)'))) {
      var split = value.split(RegExp(r'(/)'));

      month = int.parse(split[0]);
      year = int.parse(split[1]);
    } else {
      month = int.parse(value.substring(0, (value.length)));
      year = -1; // Lets use an invalid year intentionally
    }
    if ((month < 1) || (month > 12)) {
      // A valid month is between 1 (January) and 12 (December)
      return 'Expiry month is invalid';
    }
    var fourDigitsYear = convertYearTofourDigits(year);
    if ((fourDigitsYear < 1) || (fourDigitsYear > 2099)) {
      // We are assuming a valid should be between 1 and 2099.
      // Note that, it's valid doesn't mean that it has not expired.
      return 'Expiry year is invalid';
    }
    if (!hasDateExpired(month, year)) {
      return "Card has expired";
    }
    return null;
  }

  static int convertYearTofourDigits(int year) {
    if (year < 100 && year >= 0) {
      var now = DateTime.now();
      String currentYear = now.year.toString();
      String prefix = currentYear.substring(0, currentYear.length - 2);
      year = int.parse('$prefix${year.toString().padLeft(2, '0')}');
    }
    return year;
  }

  static bool hasDateExpired(int month, int year) {
    return isNotExpired(year, month);
  }

  static bool isNotExpired(int year, int month) {
    // It has not expired if both the year and date has not passed
    return !hasYearPassed(year) && !hasMonthPassed(year, month);
  }

  static List<int> getExpiryDate(String value) {
    var split = value.split(RegExp(r'(/)'));
    return [int.parse(split[0]), int.parse(split[1])];
  }

  static bool hasMonthPassed(int year, int month) {
    var now = DateTime.now();
    // The month has passed if:
    // 1. The year is in the past. In that case, we just assume that the month
    // has passed
    // 2. Card's month (plus another month) is more than current month.
    return hasYearPassed(year) ||
        convertYearTofourDigits(year) == now.year && (month < now.month + 1);
  }

  static bool hasYearPassed(int year) {
    int fourDigitsYear = convertYearTofourDigits(year);
    var now = DateTime.now();
    // The year has passed if the year we are currently is more than card's
    // year
    return fourDigitsYear < now.year;
  }

  void setImages(String cardNum) {
    if (cardNum.startsWith(RegExp(
        r'((5[1-5])|(222[1-9]|22[3-9][0-9]|2[3-6][0-9]{2}|27[01][0-9]|2720))'))) {
      cardImage = AppImages.mastercard;
    } else if (cardNum.startsWith(RegExp(r'[4]'))) {
      cardImage = AppImages.visa;
    } else if (cardNum.startsWith(RegExp(r'[8600]'))) {
      cardImage = AppImages.uzcard;
    } else if (cardNum.startsWith(RegExp(r'[9860]'))) {
      cardImage = AppImages.humo;
      // } else if (cardNum.startsWith(RegExp(r'((506(0|1))|(507(8|9))|(6500))'))) {
      //   cardType = CardType.Verve;
      // } else if (cardNum.startsWith(RegExp(r'((34)|(37))'))) {
      //   cardType = CardType.AmericanExpress;
      // } else if (cardNum.startsWith(RegExp(r'((6[45])|(6011))'))) {
      //   cardType = CardType.Discover;
      // } else if (cardNum.startsWith(RegExp(r'((30[0-5])|(3[89])|(36)|(3095))'))) {
      //   cardType = CardType.DinersClub;
      // } else if (cardNum.startsWith(RegExp(r'(352[89]|35[3-8][0-9])'))) {
      //   cardType = CardType.Jcb;
      // } else if (cardNum.length <= 8) {
      //   cardType = CardType.Others;
    } else {
      cardImage = '';
    }
  }
}
