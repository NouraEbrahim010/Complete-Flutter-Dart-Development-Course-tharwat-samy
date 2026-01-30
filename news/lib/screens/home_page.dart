import 'package:flutter/material.dart';
import 'package:news/model/news_model.dart';
import 'package:news/widgets/builder.dart';
import 'package:news/widgets/category_list.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final List<NewsModel> newsList = [
    NewsModel(title: 'Sports', imgUrl: 'assets/sports.avif'),
    NewsModel(title: 'Technology', imgUrl: 'assets/technology.jpeg'),
    NewsModel(title: 'Health', imgUrl: 'assets/health.avif'),
    NewsModel(title: 'Business', imgUrl: 'assets/business.avif'),
    NewsModel(title: 'Entertainment', imgUrl: 'assets/entertaiment.avif'),
    NewsModel(title: 'Science', imgUrl: 'assets/science.avif'),
    NewsModel(title: 'General', imgUrl: 'assets/general.avif'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'News',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              children: [
                TextSpan(
                  text: 'Cloud',
                  style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CategoryListView(newsList: newsList)),
            SliverToBoxAdapter(child: SizedBox(height: 30)),
            NewsListViewBuilder(category: 'general'),
          ],
        ),
      ),
    );
  }
}
