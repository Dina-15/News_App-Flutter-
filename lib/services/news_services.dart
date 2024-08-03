import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  const NewsServices({required this.dio});

  Future<List<ArticleModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=1c95d742498e492e8a7ec8c687e8af36&category=$category');
        Map<String, dynamic> jsonData = response.data;
        List<dynamic> articles = jsonData['articles'];
        List<ArticleModel> articlesList = [];

        for (var article in articles) {
          ArticleModel articleModel = ArticleModel.fromJson(article);
          articlesList.add(articleModel);
        }
        return articlesList;
    } catch (e) {
      print('ops!');
      return [];
    }
  }
}
