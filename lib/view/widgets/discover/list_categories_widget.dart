import 'package:flutter/material.dart';

class ListCategorieWidget extends StatelessWidget {
  final String category;
  const ListCategorieWidget({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 10, left: 10, bottom: 10),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: category == 'All' ? Colors.blue : Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: category == 'All'
          ? Text(
              category,
              style: const TextStyle(color: Colors.white),
            )
          : Text(category),
    );
  }
}
