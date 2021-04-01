import 'package:flutter/material.dart';
import 'package:hera_app/app/Widgets/UserSnippet.view.dart';
import 'package:hera_core/hera_core.dart';
import 'package:timeago/timeago.dart' as timeago;

class LikeWidget extends StatelessWidget {
  final TLike like;

  const LikeWidget({Key key, @required this.like}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserSnippetView(
      like.userId,
      bottomText: like.updatedAt != null //
          ? timeago.format(like.updatedAt, locale: 'en')
          : '',
      // bottomText: comment.comment,
    );
  }
}
