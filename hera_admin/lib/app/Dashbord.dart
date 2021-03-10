import 'package:hera_admin/app/CalendarSpace/CalendarSpace.dart';
import 'package:hera_admin/app/Dashboard/Dashboard.dart';
import 'package:hera_admin/app/NavigationBar/NavigationBar.dart';
import 'package:flutter/material.dart';

class Dashbord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            NavigationBar(),
            DashBoard(),
            CalendarSpace(),
          ],
        ),
      ),
    );
  }
}
