import 'package:flutter/material.dart';
import 'package:hera_app/app/Home/home.dart';
import 'package:hera_app/themes/styles.dart';

class Tag extends StatefulWidget {
  @override
  _TagState createState() => _TagState();
}

class _TagState extends State<Tag> {
  int selectedRadio;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: secondary),
        centerTitle: true,
        title: Text('Tag', style: textArialBoldsecondary()),
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
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildTagSearchBox(),
            buildAllowComment(),
            SizedBox(height: 15),
            buildTagListTile(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 15, right: 15, bottom: 20),
        height: 60,
        // ignore: deprecated_member_use
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
          // size: GFSize.LARGE,
          color: primary,
          // blockButton: true,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Done",
                style: textArialBoldlgwhite(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTagSearchBox() {
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
        initialValue: "Search a Friend ",
        style: textArialRegularsecondarydull(),
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Search a Friend',
            hintStyle: textArialRegularsecondarydull(),
            prefix: Padding(
              padding: const EdgeInsets.only(left: 15, top: 19, right: 5),
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

  Widget buildAllowComment() {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Row(
        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Suggestions',
            style: textArialBoldsecondary(),
          ),
        ],
      ),
    );
  }

  Widget buildTagListTile() {
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
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  padding: EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(image: AssetImage('assets/images/u4.png'))),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Nairobi',
                                  style: textArialBoldsecondarylg(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Radio(
                            value: 2,
                            groupValue: selectedRadio,
                            activeColor: Color(0xFF8DD378),
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  padding: EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(image: AssetImage('assets/images/u3.png'), fit: BoxFit.cover)),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Monica',
                                  style: textArialBoldsecondarylg(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Radio(
                            value: 3,
                            groupValue: selectedRadio,
                            activeColor: Color(0xFF8DD378),
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  padding: EdgeInsets.only(bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(image: AssetImage('assets/images/user1.png'))),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Tokio',
                                  style: textArialBoldsecondarylg(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Radio(
                            value: 1,
                            groupValue: selectedRadio,
                            activeColor: Color(0xFF8DD378),
                            onChanged: (val) {
                              print("Radio $val");
                              setSelectedRadio(val);
                            },
                          ),
                        ],
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
