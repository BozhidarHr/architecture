import 'package:architecture/views/contacts.dart';
import 'package:architecture/views/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'views/gallery.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Architecture Website',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const BasePage(body: Text("Home page")),
        '/solutions': (context) => BasePage(body: BusinessContactsPage()),
        '/gallery': (context) => BasePage(body: GalleryPage()),
        '/contacts': (context) => BasePage(body: BusinessContactsPage()),
      },
    );
  }
}

class BasePage extends StatelessWidget {
  final Widget body;

  const BasePage({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
      child: Scaffold(
        appBar: renderAppBar(context) as PreferredSizeWidget,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 100),
            child: body,
          ),
        ),
      ),
    );
  }

}

