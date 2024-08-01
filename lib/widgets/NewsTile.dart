import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class Newstile extends StatelessWidget {
  const Newstile({super.key, required this.article});
  final ArticleModel article;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
              width: double.infinity,
              height: 250,
              fit: BoxFit.fill,
              article.image ?? 'assets/technology.jpeg'), 
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        Text(
          article.subTiltle ?? '',
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ],
    );
  }
}
//'https://newsapi.org/v2/top-headlines?country=us&apiKey=1c95d742498e492e8a7ec8c687e8af36'