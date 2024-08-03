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
          child: article.image!=null? Image.network(
              article.image!
              ,
              height:200,
              width: double.infinity,
              fit:BoxFit.cover,
            ):Image.asset("assets/null.png",width: double.infinity,height:200, fit:BoxFit.cover), 
        ),
        Text(
          article.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Text(
          article.subTiltle ?? '',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      ],
    );
  }
}