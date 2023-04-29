import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const TitleWidget({Key? key, required this.title, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleLarge),
          TextButton(
            onPressed: onPressed,
            child: const Text("View all"),
          ),
        ],
      ),
    );
  }
}
