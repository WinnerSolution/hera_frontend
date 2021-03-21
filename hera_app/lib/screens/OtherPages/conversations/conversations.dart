import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/screens/OtherPages/chat/chat.dart';
import 'package:hera_app/screens/Home/tabs/search.dart';
import 'package:hera_app/themes/styles.dart';

class Conversations extends StatefulWidget {
  @override
  _ConversationsState createState() => _ConversationsState();
}

class _ConversationsState extends State<Conversations> {
  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Conversations',
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
        actions: <Widget>[
          Container(
              margin: EdgeInsets.only(right: 15),
              child: Image.asset(
                'assets/icons/menuicon.png',
                width: 30,
                height: 30,
              )),
        ],
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          buildSearchField(),
          buildCommentTile(),
        ],
      ),
    );
  }

  Widget buildSearchField() {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Search()),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        margin: EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 30),
        padding: EdgeInsets.only(left: 19),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.29), blurRadius: 5)]),
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/icons/search.png',
              width: 17,
              height: 17,
            ),
            Text(" Search Friend", style: textArialRegularsecondarywithop())
          ],
        ),
      ),
    );
  }

  Widget buildCommentTile() {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
              child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chat()),
              );
            },
            child: Column(
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                      padding: EdgeInsets.only(bottom: 15),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Stack(
                            children: <Widget>[
                              Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    image: DecorationImage(image: AssetImage('assets/images/user1.png'))),
                              ),
                              Positioned(
                                  right: 0,
                                  child: Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                        color: Color(0xFF8DD378), borderRadius: BorderRadius.circular(50)),
                                  ))
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.48,
                                    child: Text(
                                      'Tatiana ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: textArialBoldlgSecondary(),
                                    )),
                                SizedBox(height: 1),
                                Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    child: Text(
                                      'Hi, How are you doin? ',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: textArialRegularsecondarysmwithop(),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 27,
                      child: Container(
                        width: 32,
                        height: 18,
                        child: GFBadge(
                          text: '+3',
                          color: Colors.red,
                          shape: GFBadgeShape.pills,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  padding: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(image: AssetImage('assets/images/u4.png'))),
                          ),
                          Positioned(
                              right: 0,
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration:
                                    BoxDecoration(color: Color(0xFF8DD378), borderRadius: BorderRadius.circular(50)),
                              ))
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                                width: MediaQuery.of(context).size.width * 0.48,
                                child: Text(
                                  'Emily ',
                                  style: textArialBoldlgSecondary(),
                                )),
                            SizedBox(height: 1),
                            Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  'Hi, How are you doin? ',
                                  style: textArialRegularsecondarysmwithop(),
                                )),
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
}
