import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://www.google.com/search?q=priyanshu+singh+sdc&rlz=1C1GCEA_enIN984IN984&oq=priya&aqs=chrome.1.69i57j35i39j69i59j0i131i433i512j46i131i433j69i60l2j69i61.3732j0j7&sourceid=chrome&ie=UTF-8#imgrc=Em3T92ajoyMFGM";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  // arrowColor: Colors.deepPurple,
                  accountName: Text("Priaynshu singh"),
                  accountEmail: Text("2003priyanshusingh@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  // decoration: BoxDecoration(
                  //   //color: Colors.yellow,
                  //   image: DecorationImage(
                  //     image: AssetImage('assets/images/dev (2) - Copy.jpeg'),
                  //     fit: BoxFit.cover,
                  //   ),
                  // ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
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
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Mail Id",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
