import 'package:flutter/material.dart';
import 'package:payment_card_ui/assets/colors/colors.dart';

class AppBarWidget extends StatelessWidget implements PreferredSize {
  final String title;
  final Widget leading;
  const AppBarWidget(
      {super.key, required this.title, this.leading = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ConsColors.kTransparent,
      title: Text(title),
      centerTitle: true,
      elevation: 0,
      leading: leading,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
