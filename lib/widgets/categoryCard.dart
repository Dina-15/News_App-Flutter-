import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.category});
  final Categorymodel category;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8,),
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
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
      )),
    );
  }
}
