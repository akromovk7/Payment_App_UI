import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/assets/constants/route_const.dart';
import 'package:payment_card_ui/bloc/card/card_bloc.dart';
import 'package:payment_card_ui/cubit/home/home_cubit.dart';
import 'package:payment_card_ui/service/navigation_service.dart';
import 'package:payment_card_ui/view/home/add_cards/add_cards.dart';
import 'package:payment_card_ui/view/home/cards/cards_page.dart';
import 'package:payment_card_ui/view/home/payment/payment_page.dart';
import 'package:payment_card_ui/widgets/abb_bar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  // List<Widget> screens = [];

  // @override
  // void initState() {
  //   screens.add(CardsPage());
  //   screens.add(PaymentPage());

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardBloc, CardState>(
      builder: (context, state) {
        return
            // state.cards.isEmpty ? Center(child: CircularProgressIndicator()) :
            Scaffold(
          backgroundColor: ConsColors.kBackgroundColor,
          appBar: AppBarWidget(
            title: index == 0 ? 'Your Cards' : 'Payment',
          ),
          body: [CardsPage(cards: state.cards), PaymentPage()][index],
          floatingActionButton: FloatingActionButton(
            backgroundColor: ConsColors.kPrimaryColor,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BlocProvider(
                    create: (context) => CardBloc(),
                    child: AddCardsPage(),
                  ),
                ),
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
              unselectedItemColor: ConsColors.kWhite,
              onTap: (value) => setState(
                () {
                  index = value;
                },
              ),
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.wallet_rounded,
                      size: 30,
                      // color: index == 0
                      //     ? ConsColors.kPrimaryColor
                      //     : ConsColors.kWhite,
                    ),
                    label: "Wallet"),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.paypal_rounded,
                      size: 30,
                      // color: index == 1
                      //     ? ConsColors.kPrimaryColor
                      //     : ConsColors.kWhite,
                    ),
                    label: "Payment"),
              ],
            ),
          ),
        );
      },
    );
  }
}
