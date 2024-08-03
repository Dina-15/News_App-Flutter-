import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/widgets/categoryCard.dart';

class categoriesListView extends StatelessWidget {
  const categoriesListView({
    super.key,
  });
  final List<Categorymodel> categories = const [
    Categorymodel(
      image: 'assets/business.jpg',
      name: "Business",
    ),
    Categorymodel(
      image: 'assets/science.jpg',
      name: "Science",
    ),
    Categorymodel(
      image: 'assets/entertainment.jpg',
      name: "Entertainment",
    ),
    Categorymodel(
      image: 'assets/health.jpg',
      name: "Health",
    ),
    Categorymodel(
      image: 'assets/science.jpg',
      name: "Sports",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Categorycard(category: categories[index]);
          }),
    );
  }
}
