import 'package:flutter/material.dart';
import 'package:hera_app/themes/styles.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
}
