import 'package:flutter/material.dart';

Widget renderAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
// Logo
        FlutterLogo(size: 28.0),

// Menu items
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _NavBarItem('Solutions'),
            SizedBox(width: 30),
            _NavBarItem('Gallery'),
            SizedBox(width: 30),
            _NavBarItem('Contacts'),
          ],
        ),
      ],
    ),
    backgroundColor: Colors.green,
    elevation: 0,
  );
}

class _NavBarItem extends StatelessWidget {
  final String title;

  _NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
// Implement navigation logic
      },
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
