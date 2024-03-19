import 'package:flutter/material.dart';
import 'package:kishan_suvidha/api.dart';
import 'package:kishan_suvidha/language_page.dart';

class SidebarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green, // Customize the header color
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/prof1.jpg'),
              ),
              title: Text(
                'नमस्ते, मोहन \u{1F64F}',
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              size: 35,
            ),
            title: Text(
              'Home',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              // Handle Home item tap
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.language_rounded,
              size: 35,
            ),
            title: Text(
              'Language',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LanguagePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              size: 35,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              // Handle Settings item tap
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_support,
              size: 35,
            ),
            title: Text(
              'Customer support',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              // Handle Settings item tap
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.contact_support,
              size: 35,
            ),
            title: Text(
              'api call',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => apipage(),
                ),
              );
            },
          ),
          SizedBox(
            height: 350,
          ),
          ListTile(
            leading: Icon(
              Icons.exit_to_app,
              size: 35,
            ),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              // Handle Logout item tap
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
