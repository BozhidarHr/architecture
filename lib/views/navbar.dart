import 'package:flutter/material.dart';

Widget renderAppBar(BuildContext context) {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const FlutterLogo(size: 28.0)),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            _NavBarItem(
                title: 'Solutions', route: '/solutions', context: context),
            const SizedBox(width: 30),
            _NavBarItem(title: 'Gallery', route: '/gallery', context: context),
            const SizedBox(width: 30),
            _NavBarItem(
                title: 'Contacts', route: '/contacts', context: context),
            SizedBox(
              width: 110,
            )
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
  final String route;
  final BuildContext context;

  const _NavBarItem(
      {required this.title, required this.route, required this.context});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          route,
        );
      },
      hoverColor: Color(0x307C2EFF),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
