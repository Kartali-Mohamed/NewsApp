import 'package:flutter/material.dart';
import '../../../models/news_item.dart';
import '../../pages/news_details.dart';

class RecommandationListWidget extends StatelessWidget {
  final NewsItem newsItem;
  const RecommandationListWidget({
    Key? key,
    required this.newsItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context, rootNavigator: true).push(
          MaterialPageRoute(
            builder: (_) => NewsDetailsPage(
              newsItem: newsItem,
            ),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            child: Image.network(
              newsItem.imgUrl,
              fit: BoxFit.cover,
              width: 120,
              height: 120,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  newsItem.category,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(height: 15),
                Text(
                  newsItem.title,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 15),
                Text(
                  "${newsItem.author} • ${newsItem.date}",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
