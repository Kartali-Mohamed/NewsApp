import 'package:flutter/material.dart';

class TitleDescWidget extends StatelessWidget {
  final String text;
  final bool isTitle;
  const TitleDescWidget({Key? key, required this.text, required this.isTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: isTitle
          ? Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.black, fontWeight: FontWeight.bold)
          : Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.grey),
    );
  }
}
