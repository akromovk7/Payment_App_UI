import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:payment_card_ui/assets/constants/route_const.dart';
import 'package:payment_card_ui/assets/themes/theme.dart';
import 'package:payment_card_ui/router/payment_route.dart';

void main() {
  runApp(const MyApp());
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
          onGenerateRoute: AppRoute.instance.appRoutes,
          initialRoute: homePage,
        );
      },
    );
  }
}
