import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news/model/article_model.dart';
import 'package:news/services/news_services.dart';
import 'package:news/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key, required this.category});
  final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var futureNews;

  @override
  void initState() {
    super.initState();
    futureNews = NewsService(Dio()).getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: futureNews,
      builder: (context, snapshot) {
        {
          if (snapshot.hasData) {
            return NewslistView(postsList: snapshot.data ?? []);
          } else if (snapshot.hasError) {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(child: Text('No News Available')),
            );
          } else {
            return const SliverFillRemaining(
              hasScrollBody: false,
              child: Center(
                child: CircularProgressIndicator(color: Colors.orange),
              ),
            );
          }
        }
      },
    );
    // return isLoading
    //     ? const SliverFillRemaining(
    //         hasScrollBody: false,
    //         child: Center(child: CircularProgressIndicator()),
    //       )
    //     : postsList.isNotEmpty
    //     ? NewslistView(postsList: postsList)
    //     : const SliverFillRemaining(
    //         hasScrollBody: false,
    //         child: Center(child: Text('No News Available')),
    //       );
  }
}
//cached network image