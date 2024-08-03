class ArticleModel {
  final String? image;
  final String title;
  final String? subTiltle;

  ArticleModel(
      {required this.image, required this.subTiltle, required this.title});
  factory ArticleModel.fromJson(json)
  {
    return  ArticleModel(
              image: json['urlToImage'],
              subTiltle: json['description'],
              title: json['title']);
  }
}
