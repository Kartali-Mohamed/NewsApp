import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../models/news_item.dart';
import '../../pages/news_details.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = news
        .map((item) => InkWell(
              onTap: () {
                final index = news.indexOf(item);
                Navigator.of(context, rootNavigator: true).push(
                  MaterialPageRoute(
                    builder: (_) => NewsDetailsPage(
                      newsItem: news[index],
                    ),
                  ),
                );
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(24)),
                    child: Stack(
                      children: <Widget>[
                        Image.network(item.imgUrl,
                            fit: BoxFit.cover, width: 1000),
                        // Categorie
                        Positioned(
                          top: 10,
                          left: 20,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                item.category,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Author & Time
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Text(
                                  '${item.author} • ${item.time}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              // Title
                              Container(
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(200, 0, 0, 0),
                                      Color.fromARGB(0, 0, 0, 0)
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  ),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 20),
                                child: Text(
                                  item.title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            ))
        .toList();

    return Column(
      children: [
        CarouselSlider(
          items: imageSliders,
          carouselController: _controller,
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 2,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: news.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: _current == entry.key ? 25 : 12,
                height: 9,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                decoration: BoxDecoration(
                    borderRadius:
                        _current == entry.key ? BorderRadius.circular(8) : null,
                    shape: _current == entry.key
                        ? BoxShape.rectangle
                        : BoxShape.circle,
                    color: _current == entry.key
                        ? Theme.of(context).primaryColor
                        : Colors.grey.withOpacity(0.3)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
