import 'package:flutter/material.dart';
import 'package:news/model/news_model.dart';
import 'package:news/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.news});
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryView(category: news.title),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        height: 150,
        width: 250,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(news.imgUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
          child: Text(
            news.title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
