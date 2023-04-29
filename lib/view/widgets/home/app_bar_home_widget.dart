import 'package:flutter/material.dart';
import '../app_bar_icon_widget.dart';

class AppBarHomeWidget extends StatelessWidget {
  const AppBarHomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AppBarIconWidget(icon: Icons.menu),
            Row(
              children: const [
                AppBarIconWidget(icon: Icons.search),
                SizedBox(width: 10),
                AppBarIconWidget(icon: Icons.notifications_none),
              ],
            )
          ],
        ),
      ),
    );
  }
}
