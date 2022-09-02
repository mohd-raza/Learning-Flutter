import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://avatars.githubusercontent.com/u/91888013?v=4";
    return Drawer(
      child: Container(
        color: Colors.cyan,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.cyan),
                  margin: EdgeInsets.zero,
                  accountName: Text(
                    "Mohammed Raza",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: Text("mohdraza.syed@gmail.com",
                      style: TextStyle(color: Colors.white)),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
