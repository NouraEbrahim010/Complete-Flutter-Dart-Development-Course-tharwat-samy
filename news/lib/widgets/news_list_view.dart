import 'package:flutter/material.dart';
import 'package:news/model/article_model.dart';
import 'package:news/widgets/posts_card.dart';

class NewslistView extends StatelessWidget {
  const NewslistView({super.key, required this.postsList});

  final List<ArticleModel> postsList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: postsList.length, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: PostsCard(post: postsList[index]),
        );
      }),
    );
  }
}

/* 
ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: postsList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: PostsCard(post: postsList[index]),
        );
      },
    );
*/
