import 'package:flutter/material.dart';
import 'package:hera_app/screens/Home/tabs/addpost/selectedpost.dart';
import 'package:hera_app/themes/styles.dart';

class NewPost extends StatefulWidget {
  @override
  _NewPostState createState() => _NewPostState();
}

class _NewPostState extends State<NewPost> {
  bool select = true;
  bool select1 = false;
  bool select2 = false;
  bool select3 = false;
  bool select4 = false;
  bool select5 = false;
  bool select6 = false;
  bool select7 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: secondary),
        centerTitle: true,
        title: Text('New Post', style: textArialBoldsecondary()),
        elevation: 0.5,
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
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 18),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SelectedPost()),
                );
              },
              child: Text(
                'Next',
                style: textArialBoldxsprimary(),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            buildSelectedPost(),
            buildDivider(),
            buildGalleryImages(),
            // buildGalleryImagesNotSelected(),
          ],
        ),
      ),
    );
  }

  Widget buildSelectedPost() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/u8.png'), fit: BoxFit.cover)),
    );
  }

  Widget buildDivider() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 2,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
      decoration: BoxDecoration(
        color: Colors.grey[200],
      ),
    );
  }

  Widget buildGalleryImages() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    select = !select;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 106,
                      height: 86,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/u8.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                          )),
                    ),
                    select
                        ? Positioned(
                            top: 20,
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                        : Text('')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    select1 = !select1;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 106,
                      height: 86,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/u3.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                          )),
                    ),
                    select1
                        ? Positioned(
                            top: 20,
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                        : Text('')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    select2 = !select2;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 0),
                      width: 106,
                      height: 86,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/girl.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                          )),
                    ),
                    select2
                        ? Positioned(
                            top: 20,
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                        : Text('')
                  ],
                ),
              ),
              // GridView.builder(
              //   physics: ScrollPhysics(),
              //   shrinkWrap: true,
              //   scrollDirection: Axis.vertical,
              //   itemCount: 4,
              //   itemBuilder: (BuildContext context, int index) {
              //     return SingleChildScrollView(
              //         child: InkWell(
              //       onTap: () {
              //         setState(() {
              //           select = !select;
              //         });
              //       },
              //       child: Stack(
              //         children: <Widget>[
              //           Container(
              //             margin: EdgeInsets.only(left: 5, right: 5),
              //             width: 106,
              //             height: 86,
              //             decoration: BoxDecoration(
              //                 color: Colors.grey,
              //                 borderRadius: BorderRadius.circular(10),
              //                 image: DecorationImage(
              //                   image: AssetImage('assets/images/girl.png'),
              //                   fit: BoxFit.cover,
              //                   colorFilter: new ColorFilter.mode(
              //                       Colors.black.withOpacity(0.15), BlendMode.darken),
              //                 )),
              //           ),
              //           select
              //               ? Positioned(
              //                   top: 20,
              //                   bottom: 30,
              //                   left: 30,
              //                   right: 30,
              //                   child: Center(
              //                     child: Icon(
              //                       Icons.check,
              //                       color: Colors.white,
              //                       size: 40,
              //                     ),
              //                   ))
              //               : Text('')
              //         ],
              //       ),
              //     ));
              //   },
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3, mainAxisSpacing: 0, crossAxisSpacing: 0),
              // ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    select3 = !select3;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 106,
                      height: 86,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/u5.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                          )),
                    ),
                    select3
                        ? Positioned(
                            top: 20,
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                        : Text('')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    select4 = !select4;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 106,
                      height: 86,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/u6.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                          )),
                    ),
                    select4
                        ? Positioned(
                            top: 20,
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                        : Text('')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    select5 = !select5;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 0),
                      width: 106,
                      height: 86,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/u7.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                          )),
                    ),
                    select5
                        ? Positioned(
                            top: 20,
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                        : Text('')
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    select6 = !select6;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 106,
                      height: 86,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/u9.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                          )),
                    ),
                    select6
                        ? Positioned(
                            top: 20,
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                        : Text('')
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    select7 = !select7;
                  });
                },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 106,
                      height: 86,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/user.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                          )),
                    ),
                    select7
                        ? Positioned(
                            top: 20,
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                        : Text('')
                  ],
                ),
              ),
              InkWell(
                // onTap: () {
                //   setState(() {
                //     select2 = !select2;
                //   });
                // },
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 0),
                      width: 106,
                      height: 86,
                      decoration: BoxDecoration(
                          // color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/images/girll.png'),
                            fit: BoxFit.cover,
                            colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                          )),
                    ),
                    select2
                        ? Positioned(
                            top: 20,
                            bottom: 30,
                            left: 30,
                            right: 30,
                            child: Center(
                              child: Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 40,
                              ),
                            ))
                        : Text('')
                  ],
                ),
              ),
              // GridView.builder(
              //   physics: ScrollPhysics(),
              //   shrinkWrap: true,
              //   scrollDirection: Axis.vertical,
              //   itemCount: 4,
              //   itemBuilder: (BuildContext context, int index) {
              //     return SingleChildScrollView(
              //         child: InkWell(
              //       onTap: () {
              //         setState(() {
              //           select = !select;
              //         });
              //       },
              //       child: Stack(
              //         children: <Widget>[
              //           Container(
              //             margin: EdgeInsets.only(left: 5, right: 5),
              //             width: 106,
              //             height: 86,
              //             decoration: BoxDecoration(
              //                 color: Colors.grey,
              //                 borderRadius: BorderRadius.circular(10),
              //                 image: DecorationImage(
              //                   image: AssetImage('assets/images/girl.png'),
              //                   fit: BoxFit.cover,
              //                   colorFilter: new ColorFilter.mode(
              //                       Colors.black.withOpacity(0.15), BlendMode.darken),
              //                 )),
              //           ),
              //           select
              //               ? Positioned(
              //                   top: 20,
              //                   bottom: 30,
              //                   left: 30,
              //                   right: 30,
              //                   child: Center(
              //                     child: Icon(
              //                       Icons.check,
              //                       color: Colors.white,
              //                       size: 40,
              //                     ),
              //                   ))
              //               : Text('')
              //         ],
              //       ),
              //     ));
              //   },
              //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3, mainAxisSpacing: 0, crossAxisSpacing: 0),
              // ),
            ],
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget buildGalleryImagesNotSelected() {
    return GridView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return SingleChildScrollView(
            child: InkWell(
          child: Container(
            margin: EdgeInsets.only(left: 5, right: 5),
            width: 96,
            height: 86,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.15), BlendMode.darken),
                    image: AssetImage('assets/images/u3.png'),
                    fit: BoxFit.cover)),
          ),
        ));
      },
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 0, crossAxisSpacing: 0),
    );
  }
}
