import 'package:flutter/material.dart';
import 'package:hera_app/app/Views/UserSnippetView.dart';
import 'package:hera_core/hera_core.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentWidget extends StatelessWidget {
  const CommentWidget({
    Key key,
    @required this.comment,
  }) : super(key: key);

  final TComment comment;

  @override
  Widget build(BuildContext context) {
    return UserSnippetView(
      comment.userId,
      rightText: comment.updatedAt != null ? timeago.format(comment.updatedAt, locale: 'en') : '',
      bottomText: comment.comment,
    );
  }
}
