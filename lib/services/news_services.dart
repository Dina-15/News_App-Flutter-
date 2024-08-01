import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  const NewsServices({required this.dio});

  Future<List<ArticleModel>> getGeneralNews() async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=1c95d742498e492e8a7ec8c687e8af36');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            subTiltle: article['description'],
            title: article['title']);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      print('ooooopppppsssssss!!!!!!!!');
      return [];
    }
  }
}














// import 'package:dio/dio.dart';

// class NewsServices {

// final String _apiKey =
//       '1c95d742498e492e8a7ec8c687e8af36'; // Replace with your News API key
//   final String _baseUrl = 'https://newsapi.org/v2';
//   final Dio _dio = Dio();

//   // void initState() {
//   //   super.initState();
//   //   _newsArticles = fetchTopHeadlines();
//   // }

//   void fetchTopHeadlines(
//       {int page = 1, int pageSize = 20}) async {
//     try {
//       final response = await _dio.get(
//         '$_baseUrl/top-headlines',
//         queryParameters: {
//           'country': 'us',
//           'apiKey': _apiKey,
//           'page': page,
//           'pageSize': pageSize,
//         },
//       );

//       if (response.statusCode == 200) {
//         print(response.data['totalResults']);
//       } else {
//         throw Exception('Failed to load news: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error occurred: $e');
//       throw Exception('Failed to load news');
//     }
//   }
// }



//   final String _apiKey = '1c95d742498e492e8a7ec8c687e8af36'; // Replace with your News API key
//   final String _baseUrl = 'https://newsapi.org/v2';

//   final Dio _dio = Dio();

//   Future<List<dynamic>> fetchTopHeadlines() async {
//     try {
//       final response = await _dio.get(
//         '$_baseUrl/top-headlines',
//         queryParameters: {
//           'country': 'eg', // Adjust based on your needs
//           'apiKey': _apiKey,
//         },
//       );

//       if (response.statusCode == 200) {
//         return response.data['articles'];
//       } else {
//         throw Exception('Failed to load news');
//       }
//     } catch (e) {
//       print(e);
//       throw Exception('Failed to load news');
//     }
//   }
// }
