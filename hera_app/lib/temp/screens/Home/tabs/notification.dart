import 'package:flutter/material.dart';
import 'package:hera_app/themes/styles.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text('Notifications', style: textArialBoldsecondary()),
      ),
      body: ListView(
        children: <Widget>[
          buildDate(),
          buildNotificationTile(),
          buildNotificationTile2(),
          buildNotificationTile3(),
          buildDivider(),
          buildDate1(),
          buildNotificationTile(),
        ],
      ),
    );
  }

  Widget buildDate() {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
      child: Text(
        'Today',
        style: textArialBoldsecondary(),
      ),
    );
  }

  Widget buildDate1() {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10, bottom: 20),
      child: Text(
        'Yesterday',
        style: textArialBoldsecondary(),
      ),
    );
  }

  Widget buildDivider() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 2,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
    );
  }

  Widget buildNotificationTile() {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
              child: InkWell(
            //               onTap: () {
            //                  Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PostDetails()),
            // );
            //               },
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 27, right: 20, bottom: 15),
              padding: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(image: AssetImage('assets/images/u3.png'), fit: BoxFit.cover)),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Tokio commented on your post',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: textArialRegularSecondaryxs(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: EdgeInsets.only(left: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '3 hrs ago',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: textArialRegularsecondarysmwithop(),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/user.png',
                        width: 35,
                        height: 28,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ));
        });
  }

  Widget buildNotificationTile2() {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
              child: InkWell(
            //               onTap: () {
            //                  Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PostDetails()),
            // );
            //               },
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 27, right: 20, bottom: 15),
              padding: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
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
                                  image: DecorationImage(image: AssetImage('assets/images/user.png'))),
                            ),
                            Positioned(
                              left: 7,
                              top: 7,
                              child: Container(
                                height: 22,
                                width: 22,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(image: AssetImage('assets/images/u4.png'))),
                                // child: Text('shshshh'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Tokio and 322 others liked your post',
                                  style: textArialRegularSecondaryxs(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '3 hrs ago',
                                  style: textArialRegularsecondarysmwithop(),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/user.png',
                        width: 35,
                        height: 28,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ));
        });
  }

  Widget buildNotificationTile3() {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
              child: InkWell(
            //               onTap: () {
            //                  Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => PostDetails()),
            // );
            //               },
            child: Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(left: 27, right: 20, bottom: 15),
              padding: EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(image: AssetImage('assets/images/user1.png'))),
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Tokio started following you',
                                  style: textArialRegularSecondaryxs(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.43,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  '3 hrs ago',
                                  style: textArialRegularsecondarysmwithop(),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ));
        });
  }
}
