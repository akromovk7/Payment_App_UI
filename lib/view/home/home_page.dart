import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/bloc/home/home_cubit.dart';
import 'package:payment_card_ui/view/home/add_cards/add_cards.dart';
import 'package:payment_card_ui/view/home/cards/cards_page.dart';
import 'package:payment_card_ui/view/home/payment/payment_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> screens = [];

  @override
  void initState() {
    screens.add(CardsPage());
    screens.add(PaymentPage());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (context, state) {
        var index = context.watch<HomeCubit>().activePageIndex;
        return Scaffold(
          backgroundColor: ConsColors.kBackgroundColor,
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_rounded),
              onPressed: () {},
            ),
            centerTitle: true,
            title: const Text("Your Cards"),
            backgroundColor: ConsColors.kTransparent,
            elevation: 0,
          ),
          body: screens[index],
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                backgroundColor: ConsColors.kPrimaryColor,
                isScrollControlled: true,
                elevation: 0,
                context: context,
                builder: (BuildContext context) {
                  return AddCards();
                },
              );
            },
            child: const Icon(Icons.add_card_rounded),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: Theme(
            data: ThemeData(
              splashColor: ConsColors.kTransparent,
              highlightColor: ConsColors.kTransparent,
            ),
            child: BottomNavigationBar(
              backgroundColor: ConsColors.kTransparent,
              elevation: 0,
              type: BottomNavigationBarType.fixed,
              currentIndex: index,
              selectedItemColor: ConsColors.kPrimaryColor,
              onTap: (value) =>
                  BlocProvider.of<HomeCubit>(context).changePageIndex(value),
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.wallet_rounded,
                    color: index == 0
                        ? ConsColors.kPrimaryColor
                        : ConsColors.kWhite,
                  ),
                  label: "Wallet"
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.paypal_rounded,
                    color: index == 1
                        ? ConsColors.kPrimaryColor
                        : ConsColors.kWhite,
                  ),
                  label: "Payment"
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
