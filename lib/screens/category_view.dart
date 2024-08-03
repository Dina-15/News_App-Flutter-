import 'package:flutter/material.dart';
import 'package:news_app/widgets/newsList_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category, style: TextStyle(color: Colors.black),),backgroundColor: Colors.orange,),
        body: Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
      child: CustomScrollView(slivers: [
        NewsListBuilder(
          category: category,
        ),
      ]),
    ));
  }
}
