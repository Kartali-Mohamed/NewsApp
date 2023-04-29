import 'package:flutter/material.dart';
import '../../../models/news_item.dart';

class NewsBodyWidget extends StatelessWidget {
  final NewsItem newsItem;
  const NewsBodyWidget({Key? key, required this.newsItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(newsItem.imgUrl),
              ),
              const SizedBox(width: 10),
              Text(
                newsItem.author,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.\n Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.\n Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC.\n This book is a treatise on the theory of ethics, very popular during the Renaissance.\n The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.\n The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.\n Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\n It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. \n The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. \n Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for will uncover many web sites still in their infancy .\n Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 70),
        ]),
      ),
    );
  }
}
