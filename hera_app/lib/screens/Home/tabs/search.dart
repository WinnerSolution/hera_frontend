import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_app/app/Pages/ProfilePage/ProfilePage.dart';
import 'package:hera_app/themes/styles.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(height: 10),
          buildSerchField(),
          buildrecentsearchText(),
          buildRecentSearchList(),
          buildDivider(),
          buildSuggestionText(),
          buildSuggesstion()
        ],
      ),
    );
  }

  Widget buildSerchField() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      //  padding: EdgeInsets.only(bottom:8),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.29), blurRadius: 4)]),
      child: TextFormField(
        style: textArialRegularsecondarysmwithop(),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintStyle: textArialRegularsecondarysmwithop(),
            hintText: 'Search a Friend',
            prefix: Padding(
              padding: const EdgeInsets.only(left: 15, top: 19, right: 7),
              child: Image.asset(
                'assets/icons/search.png',
                width: 16,
                height: 13,
              ),
            ),
            contentPadding: EdgeInsets.only(bottom: 10, left: 10),
            border: InputBorder.none,
            fillColor: Color(0xFFF6F9FD),
            focusColor: Color(0xFFF6F9FD)),
      ),
    );
  }

  Widget buildrecentsearchText() {
    return Container(
        padding: EdgeInsets.only(left: 20, top: 5, bottom: 15),
        child: Text(
          'Recent Searches',
          style: textArialBoldsecondary(),
        ));
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

  Widget buildRecentSearchList() {
    return ListView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
              child: InkWell(
            onTap: () {
              Get.to(() => ProfilePage('MDjOnScHNBZxrg9UzHdInNzGps53', isTab: false));
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
                            image: DecorationImage(image: AssetImage('assets/images/u3.png'), fit: BoxFit.cover)),
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
                                    'Jessica',
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
                                    'Follows You',
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
                            image: DecorationImage(image: AssetImage('assets/images/u4.png'), fit: BoxFit.cover)),
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
                                  Container(
                                    width: MediaQuery.of(context).size.width * 0.6,
                                    child: Text(
                                      'Follows You',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: textArialRegularSecondarysmwithop(),
                                    ),
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
              ],
            ),
          ));
        });
  }

  Widget buildSuggestionText() {
    return Container(
        padding: EdgeInsets.only(left: 20, top: 5, bottom: 15),
        child: Text(
          'Suggestions',
          style: textArialBoldsecondary(),
        ));
  }

  Widget buildSuggesstion() {
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
              // padding: EdgeInsets.only(bottom:15),
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
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                child: Text(
                                  'Monica',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: textArialBoldlgSecondary(),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  'Followed by Berlin,and 4 others',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: textArialRegularSecondarysmwithop(),
                                ),
                              ),
                              Image.asset(
                                'assets/icons/addfriend.png',
                                width: 30,
                                height: 30,
                              )
                            ],
                          ),
                        ),
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
