import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';
import 'package:payment_card_ui/assets/constants/route_const.dart';
import 'package:payment_card_ui/bloc/home/home_cubit.dart';
import 'package:payment_card_ui/service/navigation_service.dart';
import 'package:payment_card_ui/view/home/cards/cards_page.dart';
import 'package:payment_card_ui/view/home/payment/payment_page.dart';
import 'package:payment_card_ui/widgets/abb_bar_widget.dart';

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
          appBar: AppBarWidget(
            title: index == 0 ? 'Your Cards' : 'Payment',
          ),
          body: screens[index],
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              NavigationService.instance.pushNamed(routeName: addCards);
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
              onTap: (value) =>
                  BlocProvider.of<HomeCubit>(context).changePageIndex(value),
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
