import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/screens/category_view.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.category});
  final Categorymodel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return  CategoryView(
            category: category.name,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(
          right: 8,
        ),
        height: 150,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(category.image),
          ),
        ),
        child: Center(
            child: Text(
          category.name,
          style: const TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
