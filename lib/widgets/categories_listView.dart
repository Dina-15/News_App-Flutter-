import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/widgets/categoryCard.dart';

class categoriesListView extends StatelessWidget {
  const categoriesListView({
    super.key,
  });
  final List<Categorymodel> categories = const [
    Categorymodel(
      image: 'assets/technology.jpeg',
      name: "Business",
    ),
    Categorymodel(
      image: 'assets/technology.jpeg',
      name: "Business",
    ),
    Categorymodel(
      image: 'assets/technology.jpeg',
      name: "Business",
    ),
    Categorymodel(
      image: 'assets/technology.jpeg',
      name: "Business",
    ),
    Categorymodel(
      image: 'assets/technology.jpeg',
      name: "Business",
    )
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
