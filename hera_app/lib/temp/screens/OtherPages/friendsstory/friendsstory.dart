import 'package:flutter/material.dart';
import 'package:hera_app/themes/styles.dart';

class FriendsStory extends StatefulWidget {
  @override
  _FriendsStoryState createState() => _FriendsStoryState();
}

class _FriendsStoryState extends State<FriendsStory> {
  // final storyController = StoryController();

  @override
  void dispose() {
    // storyController.dispose();
    super.dispose();
  }

  bool fav = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // StoryView(
          //   storyItems: [
          //     // StoryItem.text(
          //     //   'I guess you'd love to see more of our food. That's great.',
          //     //   Colors.blue,
          //     // ),
          //     // StoryItem.text(
          //     //   'Nice!\n\nTap to continue.',
          //     //   Colors.red,
          //     // ),
          //     // StoryItem.pageImage(
          //     //     NetworkImage(
          //     //         'https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg'),
          //     //     caption: 'Still sampling',
          //     //     ),
          //     StoryItem.pageImage(
          //       url: 'https://image.ibb.co/cU4WGx/Omotuo-Groundnut-Soup-braperucci-com-1.jpg',
          //       imageFit: BoxFit.cover, controller: null,
          //       // controller: null
          //       // caption: 'Still sampling',
          //     ),
          //     StoryItem.pageImage(
          //       url: 'assets/images/story.png', imageFit: BoxFit.cover, controller: null,
          //       // caption: 'Still sampling',
          //     ),
          //     // StoryItem.pageGif(
          //     //     'https://media.giphy.com/media/5GoVLqeAOo6PK/giphy.gif',
          //     //     caption: 'Working with gifs',
          //     //     controller: storyController),
          //     // StoryItem.pageGif(
          //     //   'https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif',
          //     //   caption: 'Hello, from the other side',
          //     //   controller: storyController,
          //     // ),
          //     // StoryItem.pageGif(
          //     //   'https://media.giphy.com/media/XcA8krYsrEAYXKf4UQ/giphy.gif',
          //     //   caption: 'Hello, from the other side2',
          //     //   controller: storyController,
          //     // ),
          //   ],
          //   onComplete: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => Home()),
          //     );
          //   },
          //   progressPosition: ProgressPosition.top,
          //   repeat: true,
          //   controller: storyController,
          // ),

          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 84,
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.60)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  InkWell(
                    onTap: () => setState(() => fav = !fav),
                    child: Container(
                        width: 50,
                        height: 44,
                        decoration: BoxDecoration(
                            // color: Colors.white,
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10)),
                        child: fav
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 30,
                              )),
                  ),
                  // Text('shshsh hhhhhhhhhhhhhhhhhhhhhhh',style: TextStyle(color:Colors.white),)
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 44,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      initialValue: 'Reply',
                      style: textArialRegularWhite(),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          // suffixIcon: Text('Post',style: textArialRegularsecondarysmwithop(),),
                          // ignore: deprecated_member_use
                          suffixIcon: RaisedButton(
                            onPressed: () {},
                            color: Colors.transparent,
                            elevation: 0,
                            child: Text(
                              'Post',
                              style: textArialRegularWhite(),
                            ),
                          ),
                          contentPadding: EdgeInsets.all(10),
                          // border: InputBorder.none,
                          enabledBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white, width: 0.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          // enabledBorder: InputBorder.none,
                          // focusedBorder: InputBorder.none,
                          fillColor: Color(0xFFF6F9FD),
                          focusColor: Color(0xFFF6F9FD)),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 0,
              // left: 25,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 25, top: 40),
                height: 88,
                decoration: BoxDecoration(color: Colors.black.withOpacity(0.50)),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: Colors.white, width: 1),
                          image: DecorationImage(image: AssetImage('assets/images/user1.png'))),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 5, top: 0),
                        child: Text(
                          'Ada Shalby',
                          style: textArialRegularWhite(),
                        ))
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Widget buildStoryCard() {
    return Stack(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration:
              BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/story.png'), fit: BoxFit.cover)),
        ),
      ],
    );
  }

  Widget buildEmailTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        height: 50,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
