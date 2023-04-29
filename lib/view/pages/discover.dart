import 'package:flutter/material.dart';
import '../../models/news_item.dart';
import '../widgets/discover/app_bar_discover_widget.dart';
import '../widgets/discover/category_list_widget.dart';
import '../widgets/discover/text_form_field_widget.dart';
import '../widgets/discover/title_desc_widget.dart';
import '../widgets/home/recommendation_list_widget.dart';

class DiscoverPage extends StatefulWidget {
  const DiscoverPage({Key? key}) : super(key: key);

  @override
  State<DiscoverPage> createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const AppBarDiscoverWidget(),
              const SizedBox(height: 20),
              const TitleDescWidget(text: "Discover", isTitle: true),
              const TitleDescWidget(
                  text: "News from all around the world", isTitle: false),
              const SizedBox(height: 15),
              const TextFormFieldWidget(),
              const SizedBox(height: 15),
              const CategoryListWidget(),
              const SizedBox(height: 15),
              ...news
                  .map((newsItem) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: RecommandationListWidget(newsItem: newsItem)))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }
}
