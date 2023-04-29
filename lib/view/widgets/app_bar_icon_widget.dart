import 'package:flutter/material.dart';

class AppBarIconWidget extends StatelessWidget {
  final IconData icon;
  final bool colorIcon;
  const AppBarIconWidget({Key? key, required this.icon, this.colorIcon = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorIcon
            ? Colors.grey.shade200
            : const Color.fromARGB(127, 158, 158, 158),
      ),
      child: Icon(icon),
    );
  }
}
