import 'package:flutter/material.dart';
import 'package:hera_app/app/Home/home.dart';
import 'package:hera_app/temp/screens/OtherPages/likes/likes.dart';
import 'package:hera_app/themes/styles.dart';

class PostDetails extends StatefulWidget {
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  bool fav = true;
  bool fav1 = false;
  bool fav2 = false;
  bool fav3 = false;
  List list = [
    "Flutter",
    "React",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              buildPostImage(),
              buildNameShareTile(),
              buildLikeTile(),
              buildCommentTile(),
              SizedBox(height: 60)
            ],
          ),
          Positioned(bottom: 0, child: buildBottomBar())
        ],
      ),
    );
  }

  Widget buildBottomBar() {
    return Container(
      // height: 100,
      width: MediaQuery.of(context).size.width,
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
          // initialValue: "Your Comment .....",
          // style: textArialRegularsecondarysmwithop(),
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
              hintText: "Your comment here.....",
              hintStyle: textArialRegularsecondarysmwithop(),
              // suffixIcon: Text('Post',style: textArialRegularsecondarysmwithop(),),
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

  Widget buildPostImage() {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.65,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/user.png'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.darken),
          )),
        ),
        Positioned(
            top: 25,
            left: 25,
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                child: Image.asset("assets/icons/backarrow.png", scale: 3, color: Colors.white))),
        Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.105,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              color: Colors.black.withOpacity(0.50),
              child: Column(
                children: <Widget>[
                  Text(
                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut',
                      style: textArialRegularlgWhite()),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        '123 Likes',
                        style: textArialRegularWhite(),
                      ),
                      Text(
                        ' 123 Comments',
                        style: textArialRegularWhite(),
                      ),
                      Text(
                        ' 123 Shares',
                        style: textArialRegularWhite(),
                      ),
                    ],
                  )
                ],
              ),
            ))
      ],
    );
  }

  Widget buildNameShareTile() {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                ' Eva Mendez',
                style: textArialBoldSecondary(),
              ),
              SizedBox(height: 2),
              Text(
                '11 minutes ago',
                style: textArialRegularsecondarysmwithop(),
              )
            ],
          ),
          Row(
            children: <Widget>[
              InkWell(
                  onTap: () => setState(() => fav = !fav),
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: fav ? Colors.red : Colors.grey[300],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: InkWell(
                  onTap: () {
                    _settingModalBottomSheet(context);
                  },
                  child: Image.asset('assets/icons/share.png', width: 30, height: 30),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (BuildContext bc) {
          return Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 1.0,
                  ),
                ],
                borderRadius: new BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                )),
            child: ListView(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage('assets/images/user.png'))),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      height: 40,
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey[200]))),
                      child: TextFormField(
                        style: textArialRegularsecondarysmwithop(),
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            hintText: "Enter Message",
                            hintStyle: textArialRegularsecondarysmwithop(),
                            errorBorder: OutlineInputBorder(borderSide: BorderSide(width: 0, color: Color(0xFFF44242))),
                            errorStyle: TextStyle(color: Color(0xFFF44242)),
                            contentPadding: EdgeInsets.all(10),
                            // enabledBorder: const OutlineInputBorder(
                            //   borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                            // ),

                            // focusedBorder: OutlineInputBorder(
                            //   // borderSide: BorderSide(color: primary),
                            // ),
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            focusColor: Colors.white),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 1,
                  color: Colors.grey[200],
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 44,
                  padding: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Color(0xFFF6F9FD),
                    borderRadius: BorderRadius.circular(10),
                    //  boxShadow: [
                    //                BoxShadow(color: Colors.black.withOpacity(0.29), blurRadius: 0)
                    //  ]
                  ),
                  child: TextFormField(
                    initialValue: "Search",
                    style: textArialRegularsecondarysmwithop(),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefix: Padding(
                          padding: const EdgeInsets.only(top: 1.0, left: 8, right: 5),
                          child: Image.asset(
                            'assets/icons/search.png',
                            width: 16,
                            height: 16,
                          ),
                        ),
                        contentPadding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                        border: InputBorder.none,
                        fillColor: Color(0xFFF6F9FD),
                        focusColor: Color(0xFFF6F9FD)),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(image: AssetImage('assets/images/girl.png'), fit: BoxFit.cover)),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 6),
                        child: Text(
                          'Add to your story',
                          style: textArialBoldsmprimary(),
                        ))
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.only(bottom: 15),
                          decoration:
                              BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(image: AssetImage('assets/images/u9.png'))),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 8),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'John Petrick',
                                          style: textArialBoldSecondary(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 0,
                            child: Container(
                              width: 66,
                              height: 30,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                onPressed: () {},
                                color: primary,
                                child: Center(
                                    child: Text(
                                  'Send',
                                  style: textArialRegularlgWhite(),
                                )),
                              ),
                            )),
                      ],
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.only(bottom: 15),
                          padding: EdgeInsets.only(bottom: 15),
                          decoration:
                              BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(image: AssetImage('assets/images/u8.png'))),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 8),
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          'John johnny',
                                          style: textArialBoldSecondary(),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            bottom: 30,
                            right: 0,
                            child: Container(
                              width: 66,
                              height: 30,
                              // ignore: deprecated_member_use
                              child: RaisedButton(
                                onPressed: () {},
                                color: primary,
                                child: Center(
                                    child: Text(
                                  'Send',
                                  style: textArialRegularlgWhite(),
                                )),
                              ),
                            )),
                      ],
                    ),
                    // ListView.builder(
                    //     physics: ScrollPhysics(),
                    //     shrinkWrap: true,
                    //     scrollDirection: Axis.vertical,
                    //     itemCount: 3,
                    //     itemBuilder: (BuildContext context, int index) {
                    //       return SingleChildScrollView(
                    //           child: InkWell(
                    //         //               onTap: () {
                    //         //                  Navigator.push(
                    //         //   context,
                    //         //   MaterialPageRoute(builder: (context) => PostDetails()),
                    //         // );
                    //         //               },
                    //         child: Stack(
                    //           children: <Widget>[
                    //             Container(
                    //               width: MediaQuery.of(context).size.width,
                    //               margin: EdgeInsets.only(bottom: 15),
                    //               padding: EdgeInsets.only(bottom: 15),
                    //               decoration: BoxDecoration(
                    //                   border: Border(
                    //                       bottom: BorderSide(
                    //                           color:
                    //                               Colors.black.withOpacity(0.04)))),
                    //               child: Row(
                    //                 children: <Widget>[
                    //                   Container(
                    //                     height: 30,
                    //                     width: 30,
                    //                     decoration: BoxDecoration(
                    //                         borderRadius: BorderRadius.circular(50),
                    //                         image: DecorationImage(
                    //                             image: AssetImage(
                    //                                 'assets/images/user1.png'))),
                    //                   ),
                    //                   Container(
                    //                     padding: EdgeInsets.only(left: 8),
                    //                     child: Column(
                    //                       children: <Widget>[
                    //                         Row(
                    //                           children: <Widget>[
                    //                             Text(
                    //                               'John Petrick',
                    //                               style: textArialBoldSecondary(),
                    //                             ),
                    //                           ],
                    //                         ),
                    //                       ],
                    //                     ),
                    //                   ),
                    //                 ],
                    //               ),
                    //             ),
                    //             Positioned(
                    //                 bottom: 30,
                    //                 right: 0,
                    //                 child: Container(
                    //                   width: 66,
                    //                   height: 30,
                    //                   child: RaisedButton(
                    //                     onPressed: () {},
                    //                     color: primary,
                    //                     child: Center(
                    //                         child: Text(
                    //                       'Send',
                    //                       style: textArialRegularlgWhite(),
                    //                     )),
                    //                   ),
                    //                 )),
                    //           ],
                    //         ),
                    //       ));
                    //     }),
                  ],
                ),
              ],
            ),
          );
        });
  }

  Widget buildLikeTile() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Likes()),
        );
      },
      child: Container(
        margin: EdgeInsets.only(left: 18, right: 20, top: 15, bottom: 15),
        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.black.withOpacity(0.04)))),
        child: Row(
          children: <Widget>[
            Container(
              width: 35,
              height: 50,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 22,
                    width: 22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage('assets/images/u6.png'))),
                  ),
                  Positioned(
                    left: 7,
                    top: 7,
                    child: Container(
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(image: AssetImage('assets/images/u7.png'))),
                      // child: Text('shshshh'),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Tokio and 322 others liked your post',
                    style: textArialRegularSecondary(),
                  ),
                  SizedBox(height: 2),
                  Text('11 Minutes ago', style: textArialRegularsecondarysmwithop())
                ],
              ),
            )
          ],
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
