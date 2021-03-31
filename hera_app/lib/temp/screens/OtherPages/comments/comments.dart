import 'package:flutter/material.dart';
import 'package:hera_app/themes/styles.dart';

class Comments extends StatefulWidget {
  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  bool fav1 = true;
  bool fav2 = false;
  bool fav3 = false;
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
            'assets/icons/backarrow.png',
            scale: 3,
            color: secondary,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              SizedBox(height: 10),
              buildCommentTile(),
            ],
          ),
          Positioned(bottom: 0, child: buildBottomBar())
        ],
      ),

      //   bottomNavigationBar: Container(
      //     height: 100,
      //     width: MediaQuery.of(context).size.width,
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
      //         initialValue: 'Your Comment .....',
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
      height: 100,
      width: MediaQuery.of(context).size.width,
      // margin: EdgeInsets.only(left: 17, right: 17, bottom: 40),
      decoration: BoxDecoration(color: Colors.white,
          // borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.11), blurRadius: 0)]),
      child: Container(
        // height: 24,
        margin: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 25),
        decoration: BoxDecoration(
            color: Color(0xFFF6F9FD),
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.11), blurRadius: 0)]),
        child: TextFormField(
          // initialValue: 'Your Comment .....',
          style: textArialRegularsecondarysmwithop(),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              // suffixIcon: Text('Post',style: textArialRegularsecondarysmwithop(),),
              hintText: 'Your comment here.....',
              hintStyle: textArialRegularsecondarysmwithop(),
              // ignore: deprecated_member_use
              suffixIcon: RaisedButton(
                onPressed: () {},
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
    return Column(
      children: [
        Container(
          // width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 20, right: 15, bottom: 15),
          padding: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage('assets/images/user1.png'))),
                  ),
                  SizedBox(width: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Text(
                              'John johny : ',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: textArialBoldSecondary(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text(
                              'Looking gorgious',
                              style: textArialRegularcSecondary(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Container(
                        width: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                '6 m',
                                style: textArialRegularsecondarysmwithop(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                '6 Likes',
                                style: textArialRegularsecondarysmwithop(),
                              ),
                            ),
                            Text(
                              'Reply',
                              style: textArialRegularsecondarysmwithop(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 18),
                // width: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                        onTap: () => setState(() => fav1 = !fav1),
                        child: Icon(
                          Icons.favorite,
                          size: 15,
                          color: fav1 ? Colors.red : Colors.grey[300],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          // width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 20, right: 15, bottom: 15),
          padding: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage('assets/images/u5.png'))),
                  ),
                  SizedBox(width: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Text(
                              'mill kelly : ',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: textArialBoldSecondary(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text(
                              'hahahh',
                              style: textArialRegularcSecondary(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Container(
                        width: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                '6 m',
                                style: textArialRegularsecondarysmwithop(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                '6 Likes',
                                style: textArialRegularsecondarysmwithop(),
                              ),
                            ),
                            Text(
                              'Reply',
                              style: textArialRegularsecondarysmwithop(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 18),
                // width: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                        onTap: () => setState(() => fav2 = !fav2),
                        child: Icon(
                          Icons.favorite,
                          size: 15,
                          color: fav2 ? Colors.red : Colors.grey[300],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          // width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 20, right: 15, bottom: 15),
          padding: EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage('assets/images/u4.png'))),
                  ),
                  SizedBox(width: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Text(
                              'John wick : ',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: textArialBoldSecondary(),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text(
                              'Beautiful',
                              style: textArialRegularcSecondary(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 3),
                      Container(
                        width: 170,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                '6 m',
                                style: textArialRegularsecondarysmwithop(),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: Text(
                                '6 Likes',
                                style: textArialRegularsecondarysmwithop(),
                              ),
                            ),
                            Text(
                              'Reply',
                              style: textArialRegularsecondarysmwithop(),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 18),
                // width: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                        onTap: () => setState(() => fav3 = !fav3),
                        child: Icon(
                          Icons.favorite,
                          size: 15,
                          color: fav3 ? Colors.red : Colors.grey[300],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
        // ListView.builder(
        //     physics: ScrollPhysics(),
        //     shrinkWrap: true,
        //     scrollDirection: Axis.vertical,
        //     itemCount: 4,
        //     itemBuilder: (BuildContext context, int index) {
        //       return SingleChildScrollView(
        //           child: InkWell(
        //         //               onTap: () {
        //         //                  Navigator.push(
        //         //   context,
        //         //   MaterialPageRoute(builder: (context) => PostDetails()),
        //         // );
        //         //               },
        //         child: Container(
        //           // width: MediaQuery.of(context).size.width,
        //           margin: EdgeInsets.only(left: 20, right: 15, bottom: 15),
        //           padding: EdgeInsets.only(bottom: 15),
        //           decoration: BoxDecoration(
        //               border: Border(
        //                   bottom:
        //                       BorderSide(color: Colors.black.withOpacity(0.04)))),
        //           child: Row(
        //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //             children: <Widget>[
        //               Row(
        //                 children: [
        //                   Container(
        //                     height: 30,
        //                     width: 30,
        //                     decoration: BoxDecoration(
        //                         borderRadius: BorderRadius.circular(50),
        //                         image: DecorationImage(
        //                             image:
        //                                 AssetImage('assets/images/user1.png'))),
        //                   ),
        //                   SizedBox(width: 4),
        //                   Column(
        //                     crossAxisAlignment: CrossAxisAlignment.start,
        //                     children: <Widget>[
        //                       Row(
        //                         children: <Widget>[
        //                           Container(
        //                             width: MediaQuery.of(context).size.width * 0.25,
        //                             child: Text(
        //                               'John wick : ',
        //                               maxLines: 2,
        //                               overflow: TextOverflow.ellipsis,
        //                               style: textArialBoldSecondary(),
        //                             ),
        //                           ),
        //                           Container(
        //                             width: MediaQuery.of(context).size.width * 0.4,
        //                             child: Text(
        //                               'Looking gorgious',
        //                               style: textArialRegularcSecondary(),
        //                               maxLines: 2,
        //                               overflow: TextOverflow.ellipsis,
        //                             ),
        //                           )
        //                         ],
        //                       ),
        //                       SizedBox(height: 3),
        //                       Container(
        //                         width: 170,
        //                         child: Row(
        //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //                           children: <Widget>[
        //                             Padding(
        //                               padding: const EdgeInsets.only(right: 20.0),
        //                               child: Text(
        //                                 '6 m',
        //                                 style: textArialRegularsecondarysmwithop(),
        //                               ),
        //                             ),
        //                             Padding(
        //                               padding: const EdgeInsets.only(right: 20.0),
        //                               child: Text(
        //                                 '6 Likes',
        //                                 style: textArialRegularsecondarysmwithop(),
        //                               ),
        //                             ),
        //                             Text(
        //                               'Reply',
        //                               style: textArialRegularsecondarysmwithop(),
        //                             )
        //                           ],
        //                         ),
        //                       ),
        //                     ],
        //                   ),
        //                 ],
        //               ),
        //               Container(
        //                 padding: EdgeInsets.only(top: 18),
        //                 // width: 90,
        //                 child: Row(
        //                   mainAxisAlignment: MainAxisAlignment.end,
        //                   crossAxisAlignment: CrossAxisAlignment.end,
        //                   children: <Widget>[
        //                     InkWell(
        //                         onTap: () => setState(() => fav = !fav),
        //                         child: Icon(
        //                           Icons.favorite,
        //                           size: 15,
        //                           color: fav ? Colors.red : Colors.grey[300],
        //                         )),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ));
        //     }),
      ],
    );
  }
}
