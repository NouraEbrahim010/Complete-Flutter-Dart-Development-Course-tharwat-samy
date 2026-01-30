import 'package:dio/dio.dart';
import 'package:news/model/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      return await Future.delayed(const Duration(seconds: 2), () async {
        Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=4cee3e8a12ab47b2ad775e23dcdf3bcb&country=us&category=$category',
        );
        Map<String, dynamic> jsonData = response.data;
        List<dynamic> articles = jsonData['articles'];
        List<ArticleModel> newsList = articles
            .map((article) => ArticleModel.fromJson(article))
            .toList();
        return newsList;
      });
    } catch (e) {
      return [];
    }
  }
}
// return await Future.delayed(const Duration(seconds: 2), () async {
        //   Response response = await dio.get(
        //     'https://newsapi.org/v2/top-headlines?apiKey=4cee3e8a12ab47b2ad775e23dcdf3bcb&country=us&category=$category',
        //   );
        //   Map<String, dynamic> jsonData = response.data;
        //   List<dynamic> articles = jsonData['articles'];
        //   List<ArticleModel> newsList = [];
        //   for (var article in articles) {
        //     ArticleModel articleModel = ArticleModel(
        //       author: article['author'],
        //       url: article['url'],
        //       urlToImage: article['urlToImage'],
        //       publishedAt: article['publishedAt'],
        //       content: article['content'],
        //       title: article['title'],
        //       description: article['description'],
        //     );
        //     newsList.add(articleModel);
        //   }
        //   return newsList;
        // });