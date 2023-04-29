import 'package:flutter/material.dart';
import '../app_bar_icon_widget.dart';

class AppBarDiscoverWidget extends StatelessWidget {
  const AppBarDiscoverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const AppBarIconWidget(icon: Icons.chevron_left_outlined)),
    );
  }
}
