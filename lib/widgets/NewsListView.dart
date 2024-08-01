import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widgets/NewsTile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({
    super.key, required this.articles,
  });
  final List<ArticleModel> articles;
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Newstile(article: articles[index]),
      );
    }));
  }
}
