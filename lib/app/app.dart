import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/constants/route_const.dart';
import 'package:payment_card_ui/assets/themes/theme.dart';
import 'package:payment_card_ui/bloc/card/card_bloc.dart';
import 'package:payment_card_ui/cubit/home/home_cubit.dart';
import 'package:payment_card_ui/router/payment_route.dart';
import 'package:payment_card_ui/service/navigation_service.dart';
import 'package:payment_card_ui/view/home/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => HomeCubit()),
        ),
        // BlocProvider(create: (context) => HomeBloc()..add(FetchAllCards()))
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Payment Card UI',
          theme: AppTheme.apptheme,
          onGenerateRoute: (settings) => MaterialPageRoute(
            builder: (_) => BlocProvider(
              create: (context) => CardBloc()..add(CardEvent.getCard()),
              child: const HomePage(),
            ),
          ),
        );
      },
    );
  }
}
