import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_listView.dart';
import 'package:news_app/widgets/newsList_builder.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'News',
                style:
                    TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.bold),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    color: Colors.orange, fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body:  Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(child: categoriesListView()),
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 20,
                ),
              ),
              NewsListBuilder(category: 'general',)
            ],
          ),
        ));
  }
}
