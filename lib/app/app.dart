import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/constants/route_const.dart';
import 'package:payment_card_ui/assets/themes/theme.dart';
import 'package:payment_card_ui/bloc/home/home_bloc_bloc.dart';
import 'package:payment_card_ui/bloc/home/home_bloc_event.dart';
import 'package:payment_card_ui/cubit/home/home_cubit.dart';
import 'package:payment_card_ui/router/payment_route.dart';
import 'package:payment_card_ui/service/navigation_service.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => HomeCubit()),
        ),
        BlocProvider(create: (context) => HomeBloc()..add(FetchAllCards()))
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
          navigatorKey: NavigationService.instance.navigatorKey,
          debugShowCheckedModeBanner: false,
          title: 'Payment Card UI',
          theme: AppTheme.apptheme,
          onGenerateRoute: AppRoute.instance.appRoutes,
          initialRoute: homePage,
        );
      },
    );
  }
}
