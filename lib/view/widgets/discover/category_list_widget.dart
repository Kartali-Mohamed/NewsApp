import 'package:flutter/material.dart';
import '../../../models/news_item.dart';
import 'list_categories_widget.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...category
            .map((category) => ListCategorieWidget(
                  category: category,
                ))
            .toList(),
      ],
    );
  }
}
