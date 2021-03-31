import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:hera_core/hera_core.dart';
import 'package:pedantic/pedantic.dart';
import 'package:softi_common/core.dart';
import 'package:softi_common/resource.dart';

class PostDetailsPageController extends BaseController {
  final Rx<TPost> post;
  final ResourceCollection<TComment> commentCollection;

  PostDetailsPageController(TPost viewedPost)
      : post = viewedPost.obs,
        commentCollection = firestore.collection<TComment>();

  // final lastComment = ''.obs;

  TextEditingController lastCommentController = TextEditingController();

  @override
  void onReady() {
    var filter = Filter() //
        .$filter$eq('postId', post().getId())
        .$orderBy('createdAt', desc: true);

    commentCollection.requestData(
      filter.build(),
      options: CollectionOptions(pageSize: 2),
    );

    super.onReady();
  }

  @override
  void onClose() {
    lastCommentController.dispose();
    commentCollection.dispose();
  }

  void handleListItemCreation(int index, int length) {
    if (commentCollection.data.length == (index + 1) && commentCollection.hasMoreData()) {
      commentCollection.requestMoreData();
    }
  }

  Future<void> postComment() async {
    await controllerTaskHandler(
      task: () async {
        unawaited(firestore
            .save<TComment>(TComment(
          comment: lastCommentController.text,
          postId: post().getId(),
          userId: AppController.find.user().id,
        ))
            .catchError((error, stackTrace) async {
          await loading.showToast('status');
        }));

        lastCommentController.clear();
        return 'Posted !';
      },
      errorHandler: (e) => 'Error /!\\',
    );
  }
}
