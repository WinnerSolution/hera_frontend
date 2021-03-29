import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/CommentsPage/widgets/CommentWidget.dart';
import 'package:hera_app/app/Pages/PostDetailsPage/PostDetailsPage.controller.dart';
import 'package:hera_app/components/widgets/ItemListWidget.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';

class CommentsPage extends StatelessWidget {
  final TPost viewedPost;

  CommentsPage(this.viewedPost);

  PostDetailsPageController get con => Get.put(PostDetailsPageController(viewedPost));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Comments',
          style: textArialBoldsecondary(),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: secondary),
        elevation: 0.3,
        leading: InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            "assets/icons/backarrow.png",
            scale: 3,
            color: secondary,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          // ListView(
          //   children: <Widget>[
          //     SizedBox(height: 10),
          buildCommentTile(),
          //   ],
          // ),
          Positioned(bottom: 0, child: buildBottomBar())
        ],
      ),

      //   bottomNavigationBar: Container(
      //     height: 100,
      //     width: Get.mediaQuery.size.width,
      //     // margin: EdgeInsets.only(left: 17, right: 17, bottom: 40),
      //     decoration: BoxDecoration(
      //       color: Colors.white,
      //         // borderRadius: BorderRadius.circular(30),
      //         boxShadow: [
      //           BoxShadow(color: Colors.black.withOpacity(0.11), blurRadius: 0)
      //         ]
      //         ),
      // child: Container(
      //   // height: 24,
      //   margin: EdgeInsets.only(left:20,right:20,top: 20,bottom: 25),
      //   decoration: BoxDecoration(
      //     color: Color(0xFFF6F9FD),
      //     borderRadius: BorderRadius.circular(15),
      //     boxShadow: [
      //           BoxShadow(color: Colors.black.withOpacity(0.11), blurRadius: 0)
      //         ]
      //   ),
      //   child: TextFormField(
      //         initialValue: "Your Comment .....",
      //         style: textArialRegularsecondarysmwithop(),
      //         keyboardType: TextInputType.emailAddress,
      //         decoration: InputDecoration(
      //           // suffixIcon: Text('Post',style: textArialRegularsecondarysmwithop(),),
      //           suffixIcon: RaisedButton(onPressed: (){},
      //           color: Color(0xFFF6F9FD),
      //           elevation: 0,
      //           child: Text('Post',style: textArialRegularsecondarysmwithop(),),
      //           ),
      //             contentPadding: EdgeInsets.all(10),
      //             border: InputBorder.none,
      //             enabledBorder: InputBorder.none,
      //             focusedBorder: InputBorder.none,
      //             fillColor: Color(0xFFF6F9FD),
      //             focusColor: Color(0xFFF6F9FD)),
      //       ),
      // ),
      //   ),
    );
  }

  Widget buildBottomBar() {
    return Container(
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
          controller: con.lastCommentController,
          // initialValue: con.lastComment(),
          // onChanged: (value) {
          //   print(value);
          //   return con.lastComment(value);
          // },
          // keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Your comment here.....",
              hintStyle: textArialRegularsecondarysmwithop(),
              // suffixIcon: Text('Post',style: textArialRegularsecondarysmwithop(),),
              // ignore: deprecated_member_use
              suffixIcon: RaisedButton(
                onPressed: () => con.postComment(),
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
    );
  }

  Widget buildCommentTile() {
    return Obx(
      () {
        var _commentsList = con.commentCollection.data();

        return ItemListWidget(
          itemCreated: con.handleListItemCreation,
          itemCount: _commentsList.length,
          crossAxisCount: 1,
          itemBuilder: (index) {
            var comment = _commentsList[index];
            return CommentWidget(comment: comment);
          },
        );
      },
    );
  }
}
