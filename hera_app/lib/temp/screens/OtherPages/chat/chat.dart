import 'package:flutter/material.dart';
import 'package:hera_app/themes/styles.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.3,
        title: Container(
          width: MediaQuery.of(context).size.width * 0.25,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/images/girl.png'), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Tatiana',
                    style: textArialBoldsecondary(),
                  ),
                  Text(
                    ' Online',
                    style: textArialRegularsecondarysmwithop(),
                  ),
                ],
              )
            ],
          ),
        ),
        iconTheme: new IconThemeData(color: secondary),
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
          ListView(
            children: <Widget>[
              buildDateTime(),
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
//              padding: EdgeInsets.only(bottom: 20),
                child: ListView(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    buildReceiverMessage(),
                    buildOwnMessage(),
                    SizedBox(height: 5),
                    buildDateTime(),
                    buildReceiverMessage(),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
//            top: MediaQuery.of(context).size.height *0.8 ,
            bottom: 0,
            child: Container(
              height: 99,
              width: MediaQuery.of(context).size.width,
              // padding: EdgeInsets.only(left:15,right:15),
              decoration: BoxDecoration(
                  color: Colors.white, boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.11), blurRadius: 0)]),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 45,
                    margin: EdgeInsets.only(left: 20),
                    // padding: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(color: Color(0xFFF6F9FD), borderRadius: BorderRadius.circular(10)),
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      decoration: InputDecoration(
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
                        prefixIcon: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Image.asset(
                              'assets/images/camera.png',
                              width: 40,
                              height: 30,
                            )),
                        fillColor: Colors.white,
                        border: InputBorder.none,
                        hintText: 'Enter Message',
                        hintStyle: textArialRegularsecondarysmwithop(),
                      ),
                      style: textArialRegularsecondarysmwithop(),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildDateTime() {
    return Container(
        // width: MediaQuery.of(context).size.width*0.6,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '04 April,6 AM',
              style: textArialRegularsecondarysmwithop(),
            ),
          ],
        ));
  }

  Widget buildOwnMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          constraints: BoxConstraints(maxWidth: 167, minHeight: 72),
          margin: EdgeInsets.only(
            left: 20,
            right: 0,
            top: 10,
          ),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Color(0xFFF6F9FD), borderRadius: BorderRadius.circular(15)),
          child: Text(
            "Good morning, what's up?🙂",
            style: textArialRegularSecondaryxs(),
          ),
        ),
      ],
    );
  }

  Widget buildReceiverMessage() {
    return Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 15, right: 10),
          width: 30,
          height: 30,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage('assets/images/u4.png'), fit: BoxFit.fill)),
        ),
        Container(
          constraints: BoxConstraints(maxWidth: 189, minHeight: 33),
          margin: EdgeInsets.only(
            left: 0,
            right: 20,
            top: 10,
          ),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color(0xFFF0F0F0),
              border: Border.all(color: Colors.black12),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40))),
          child: Text(
            'Hi, Good Moring..🙂',
            style: textArialRegularSecondaryxs(),
          ),
        )
      ],
    );
  }
}
