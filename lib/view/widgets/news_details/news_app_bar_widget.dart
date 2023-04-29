import 'package:flutter/material.dart';
import '../../../models/news_item.dart';
import '../app_bar_icon_widget.dart';

class NewsAppBarWidget extends StatefulWidget {
  final NewsItem newsItem;
  const NewsAppBarWidget({Key? key, required this.newsItem}) : super(key: key);

  @override
  State<NewsAppBarWidget> createState() => _NewsAppBarWidgetState();
}

class _NewsAppBarWidgetState extends State<NewsAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SliverAppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      expandedHeight: size.height * 0.4,
      pinned: true,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const AppBarIconWidget(
            icon: Icons.chevron_left_outlined,
            colorIcon: false,
          ),
        ),
      ),
      actions: const [
        AppBarIconWidget(
          icon: Icons.bookmark_border,
          colorIcon: false,
        ),
        SizedBox(width: 10),
        AppBarIconWidget(
          icon: Icons.menu,
          colorIcon: false,
        ),
        SizedBox(width: 10),
      ],
      iconTheme: const IconThemeData(color: Colors.white),
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
        background: Stack(
          children: [
            Positioned.fill(
              child: Image.network(
                widget.newsItem.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Categorie
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        widget.newsItem.category,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Title
                  Text(
                    widget.newsItem.title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Author & Time
                  Text(
                    '${widget.newsItem.author} • ${widget.newsItem.time}',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
