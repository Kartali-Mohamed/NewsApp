import 'package:flutter/material.dart';
import '../../models/news_item.dart';
import 'discover.dart';
import '../widgets/home/app_bar_home_widget.dart';
import '../widgets/home/carousel_widget.dart';
import '../widgets/home/recommendation_list_widget.dart';
import '../widgets/home/title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            const AppBarHomeWidget(),
            TitleWidget(
              title: "Breaking News",
              onPressed: () {
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                  builder: (_) => const DiscoverPage(),
                ));
              },
            ),
            const CarouselWidget(),
            TitleWidget(
              title: "Recommendation",
              onPressed: () {
                Navigator.of(context, rootNavigator: true)
                    .push(MaterialPageRoute(
                  builder: (_) => const DiscoverPage(),
                ));
              },
            ),
            ...news
                .map((newsItem) => Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, bottom: 12),
                    child: RecommandationListWidget(newsItem: newsItem)))
                .toList(),
            const SizedBox(height: 35),
          ],
        ),
      ),
    );
  }
}
