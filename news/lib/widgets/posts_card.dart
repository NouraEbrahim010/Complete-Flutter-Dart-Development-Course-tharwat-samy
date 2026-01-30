import 'package:flutter/material.dart';
import 'package:news/model/article_model.dart';
import 'package:news/screens/web_view.dart';

class PostsCard extends StatelessWidget {
  const PostsCard({super.key, required this.post});
  final ArticleModel post;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WebViewScreen(
              url: post.url!,
              title: post.title!,
              image: post.urlToImage ?? 'https://via.placeholder.com/150',
              description: post.description ?? '',
            ),
          ),
        );
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: post.urlToImage != null
                ? Image.network(
                    post.urlToImage!,
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                : Container(
                    height: 200,
                    width: double.infinity,
                    color: Colors.grey,
                    child: Center(
                      child: Text(
                        'No Image Available',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
          ),
          ListTile(
            title: Text(
              post.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black87,
              ),
            ),
            subtitle: Text(
              post.description ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
                color: Colors.black54,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
