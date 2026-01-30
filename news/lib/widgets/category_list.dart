import 'package:flutter/material.dart';
import 'package:news/model/news_model.dart';
import 'package:news/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, required this.newsList});

  final List<NewsModel> newsList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: newsList.length,
        itemBuilder: (context, index) {
          return CategoryCard(news: newsList[index]);
        },
      ),
    );
  }
}
