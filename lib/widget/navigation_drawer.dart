import 'package:flutter/material.dart';
import 'package:hacker_feed/screens/settings.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(''),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                "Home",
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.add,
              ),
              title: Text(
                "New",
                style: TextStyle(),
              ),
              onTap: () {},
            ),
            ExpansionTile(
              leading: Icon(Icons.rss_feed),
              title: Text("Feeds"),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.rss_feed,
                    ),
                    title: Text(
                      "Feed1",
                      style: TextStyle(),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            ExpansionTile(
              leading: Icon(Icons.play_arrow),
              title: Text("Podcasts"),
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.play_circle_outline,
                    ),
                    title: Text(
                      "Podcast1",
                      style: TextStyle(),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text(
                "Settings",
                style: TextStyle(),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new SettingsScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
