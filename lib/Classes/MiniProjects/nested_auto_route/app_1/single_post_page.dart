import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class SinglePostsPage extends StatelessWidget {
  final int postId;
  const SinglePostsPage({Key? key, @PathParam() required this.postId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
