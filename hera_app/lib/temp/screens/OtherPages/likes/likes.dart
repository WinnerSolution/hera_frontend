import 'package:flutter/material.dart';
import 'package:hera_app/themes/styles.dart';

class Likes extends StatefulWidget {
  @override
  _LikesState createState() => _LikesState();
}

class _LikesState extends State<Likes> {
  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Likes',
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
      body: ListView(
        children: <Widget>[SizedBox(height: 10), buildLike(), buildLikeWithAddfriend()],
      ),
    );
  }

  Widget buildLike() {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
              child: InkWell(
            onTap: () {
              //                  Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PostDetails()),
              // );
            },
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  padding: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      // border: Border(
                      //   bottom: BorderSide(color:Colors.black.withOpacity(0.04))
                      // )
                      ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(image: AssetImage('assets/images/user1.png'))),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 6),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'John',
                                    style: textArialBoldlgSecondary(),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.only(top: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Friends',
                                    style: textArialRegularSecondarysmwithop(),
                                  ),
                                  // Image.asset('assets/icons/addfriend.png',width: 30,height: 30,)
                                ],
                              ),
                            ),
                            SizedBox(height: 3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  padding: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      // border: Border(
                      //   bottom: BorderSide(color:Colors.black.withOpacity(0.04))
                      // )
                      ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(image: AssetImage('assets/images/user.png'))),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 6),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Eva',
                                    style: textArialBoldlgSecondary(),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.only(top: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Friends',
                                    style: textArialRegularSecondarysmwithop(),
                                  ),
                                  // Image.asset('assets/icons/addfriend.png',width: 30,height: 30,)
                                ],
                              ),
                            ),
                            SizedBox(height: 3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  padding: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      // border: Border(
                      //   bottom: BorderSide(color:Colors.black.withOpacity(0.04))
                      // )
                      ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        height: 52,
                        width: 52,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(image: AssetImage('assets/images/girl.png'))),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 6),
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Emily',
                                    style: textArialBoldlgSecondary(),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              padding: EdgeInsets.only(top: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Friends',
                                    style: textArialRegularSecondarysmwithop(),
                                  ),
                                  // Image.asset('assets/icons/addfriend.png',width: 30,height: 30,)
                                ],
                              ),
                            ),
                            SizedBox(height: 3),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ));
        });
  }

  Widget buildLikeWithAddfriend() {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
              child: InkWell(
            onTap: () {
              //                  Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => PostDetails()),
              // );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
              padding: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                  // border: Border(
                  //   bottom: BorderSide(color:Colors.black.withOpacity(0.04))
                  // )
                  ),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage('assets/images/user1.png'))),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 6),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          padding: EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Monica',
                                style: textArialBoldlgSecondary(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.7,
                          padding: EdgeInsets.only(top: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Followed by Berlin,and 4 others',
                                style: textArialRegularSecondarysmwithop(),
                              ),
                              Image.asset(
                                'assets/icons/addfriend.png',
                                width: 30,
                                height: 30,
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ));
        });
  }
}
