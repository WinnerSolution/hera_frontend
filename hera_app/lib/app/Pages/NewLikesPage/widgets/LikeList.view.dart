import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/NewLikesPage/widgets/LikeWidget.dart';
import 'package:hera_app/app/Widgets/ItemListWidget.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:pedantic/pedantic.dart';
import 'package:softi_common/core.dart';
import 'package:softi_common/resource.dart';

class LikeListController extends CollectionController<TLike> {
  final String postId;

  LikeListController(this.postId)
      : super(
          firestore.collection<TLike>(),
          filter: Filter() //
              .$filter$eq('postId', postId)
              .$filter$eq('like', true)
              .$orderBy('updatedAt', desc: true),
          options: CollectionOptions(pageSize: 20),
        );

  //! Posting comments

  TextEditingController lastCommentController = TextEditingController();

  Future<void> postComment() async {
    await serviceTaskHandler(
      task: () async {
        unawaited(firestore.api<TComment>().save(TComment(
              comment: lastCommentController.text,
              postId: postId,
              userId: AppController.find.user().id,
            )));
        lastCommentController.clear();
        // return 'Posted !';
      },
      // errorHandler: (e) => '/!\\',
    );
  }
}

class LikeListView extends BaseView<LikeListController> {
  final TPost post;

  @override
  final String tag;

  LikeListView(this.post, {this.tag});

  @override
  LikeListController init() => LikeListController(post.getId());

  @override
  Widget builder(controller) {
    return Stack(
      children: <Widget>[
        ItemListWidget(
          itemCreated: controller.handleListItemCreation,
          itemCount: controller.collection.data().length,
          crossAxisCount: 1,
          itemBuilder: (index) {
            var like = controller.collection.data()[index];
            return LikeWidget(like: like);
          },
        ),
        Positioned(
          bottom: 0,
          child: Container(
            // height: 100,
            width: Get.mediaQuery.size.width,
            // margin: EdgeInsets.only(left: 17, right: 17, bottom: 40),
            decoration: BoxDecoration(color: Colors.white,
                // borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.11), blurRadius: 0)]),
            child: Container(
              // height: 24,
              margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
              decoration: BoxDecoration(
                  color: Color(0xFFF6F9FD),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.11), blurRadius: 0)]),
              child: TextFormField(
                controller: controller.lastCommentController,
                decoration: InputDecoration(
                    hintText: 'Your comment here.....',
                    hintStyle: textArialRegularsecondarysmwithop(),
                    // suffixIcon: Text('Post',style: textArialRegularsecondarysmwithop(),),
                    // ignore: deprecated_member_use
                    suffixIcon: RaisedButton(
                      onPressed: () => controller.postComment(),
                      color: Color(0xFFF6F9FD),
                      elevation: 0,
                      child: Text(
                        'Post',
                        style: textArialRegularsecondarysmwithop(),
                      ),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    fillColor: Color(0xFFF6F9FD),
                    focusColor: Color(0xFFF6F9FD)),
              ),
            ),
          ),
        )
      ],
    );
  }
}
