import 'package:flutter/material.dart';
import '../../models/news_item.dart';
import '../widgets/news_details/news_body_widget.dart';
import '../widgets/news_details/news_app_bar_widget.dart';

class NewsDetailsPage extends StatelessWidget {
  final NewsItem newsItem;
  const NewsDetailsPage({Key? key, required this.newsItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: CustomScrollView(
              slivers: [
                NewsAppBarWidget(newsItem: newsItem),
                NewsBodyWidget(newsItem: newsItem),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: size.width,
              height: size.height * 0.25,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
