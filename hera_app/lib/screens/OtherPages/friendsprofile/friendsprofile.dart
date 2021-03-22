import 'package:flutter/material.dart';
import 'package:hera_app/screens/OtherPages/chat/chat.dart';
import 'package:hera_app/themes/styles.dart';

class FriendsProfile1 extends StatefulWidget {
  @override
  _FriendsProfileState createState() => _FriendsProfileState();
}

class _FriendsProfileState extends State<FriendsProfile1> {
  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Image.asset(
              'assets/icons/menuicon.png',
              width: 20,
              height: 20,
            ),
          )
        ],
        iconTheme: IconThemeData(color: secondary),
        backgroundColor: Colors.white,
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
      body: ListView(
        children: <Widget>[
          buildProfileCard(),
          // SizedBox(height:10),
          Stack(
            children: [
              buildPhotoGrid(),
              // Positioned(child: Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: MediaQuery.of(context).size.height,
              //   color: Colors.black38,
              // ))
            ],
          )
        ],
      ),
    );
  }

  Widget buildProfileCard() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.48,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.20),
                blurRadius: 5,
                offset: Offset(
                  0.0,
                  0.75,
                ))
          ]),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // SizedBox(height: 25),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: DecorationImage(image: AssetImage('assets/images/u4.png'))),
          ),
          Text(
            'Sansa Stark',
            style: textArialBoldlgSecondary(),
          ),
          Text(
            'Westeros, Seven Kingdoms',
            style: textArialRegularsecondarydull(),
          ),
          SizedBox(height: 20),
          Text(
            'Follows You',
            style: textArialRegularSecondarysmwithop(),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Photos',
                    style: textArialRegularsecondarydull(),
                  ),
                  Text(
                    '1234',
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Followers',
                    style: textArialRegularsecondarydull(),
                  ),
                  Text(
                    '1234',
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Following',
                    style: textArialRegularsecondarydull(),
                  ),
                  Text(
                    '1234',
                    style: textArialBoldlgSecondary(),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                height: 40,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  color: primary,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/icons/addfriend.png',
                        color: Colors.white,
                      ),
                      Text(
                        'Follow Back',
                        style: textArialRegularlgwhite(),
                      )
                    ],
                  ),
                  padding: EdgeInsets.only(left: 20, right: 20),
                ),
              ),
              Container(
                height: 40,
                // ignore: deprecated_member_use
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Chat()),
                    );
                  },
                  color: Colors.transparent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0), side: BorderSide(color: secondary)),
                  child: Text(
                    'Message',
                    style: textArialRegularlgsecondary(),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildPhotoGrid() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: [
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //  margin: EdgeInsets.only(left:5,right: 5),
                width: MediaQuery.of(context).size.width * 0.475,
                height: 112,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/u3.png'), fit: BoxFit.cover)),
              ),
              Container(
                //  margin: EdgeInsets.only(left:5,right: 5),
                width: MediaQuery.of(context).size.width * 0.475,
                height: 112,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/u5.png'), fit: BoxFit.cover)),
              ),
              // GridView.builder(
              //   physics: ScrollPhysics(),
              //   shrinkWrap: true,
              //   scrollDirection: Axis.vertical,
              //   itemCount: 5,
              //   itemBuilder: (BuildContext context, int index) {
              //     return SingleChildScrollView(
              //         child: InkWell(
              //       //               onTap: () {
              //       //                  Navigator.push(
              //       //   context,
              //       //   MaterialPageRoute(builder: (context) => PostDetails()),
              //       // );
              //       //               },
              //       child: Container(
              //         //  margin: EdgeInsets.only(left:5,right: 5),
              //         width: MediaQuery.of(context).size.width*0.475,
              //         height: 112,
              //         decoration: BoxDecoration(
              //             color: Colors.grey,
              //             borderRadius: BorderRadius.circular(10),
              //             image: DecorationImage(
              //                 image: AssetImage('assets/images/u3.png'),
              //                 fit: BoxFit.cover)),
              //       ),
              //     ));
              //   },
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       childAspectRatio: MediaQuery.of(context).size.width / 248,
              //       crossAxisSpacing: 10,
              //       mainAxisSpacing: 10,
              //       crossAxisCount: 2),
              // ),
            ],
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //  margin: EdgeInsets.only(left:5,right: 5),
                width: MediaQuery.of(context).size.width * 0.475,
                height: 112,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/u7.png'), fit: BoxFit.cover)),
              ),
              Container(
                //  margin: EdgeInsets.only(left:5,right: 5),
                width: MediaQuery.of(context).size.width * 0.475,
                height: 112,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/u6.png'), fit: BoxFit.cover)),
              ),
            ],
          ),
          SizedBox(height: 7),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                //  margin: EdgeInsets.only(left:5,right: 5),
                width: MediaQuery.of(context).size.width * 0.475,
                height: 112,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/u8.png'), fit: BoxFit.cover)),
              ),
              Container(
                //  margin: EdgeInsets.only(left:5,right: 5),
                width: MediaQuery.of(context).size.width * 0.475,
                height: 112,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(image: AssetImage('assets/images/u9.png'), fit: BoxFit.cover)),
              ),
            ],
          ),
          SizedBox(height: 17),
        ],
      ),
    );
  }
}
