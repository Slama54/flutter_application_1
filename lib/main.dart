import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/chatPage.dart';
import 'package:flutter_application_1/homePage.dart';
import 'package:flutter_application_1/profilePage.dart';
import 'package:flutter_application_1/searchPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tp2",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          useMaterial3: true),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _page = 0;
  List<Widget> list = [
    HomePage(),
    SearchPage(),
    ChatPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("home Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
        body: Center(
          child: ListView(
            children: const [
              ListTile(
                leading: Icon(Icons.car_rental),
                title: Text("Car"),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                leading: Icon(Icons.train),
                title: Text("Train"),
                trailing: Icon(Icons.more_vert),
              ),
              ListTile(
                leading: Icon(Icons.flight),
                title: Text("Flight"),
                trailing: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
      // body: list[_page],
      // body: IndexedStack(
      //   index: _page,
      //   children: list,
      //),
      // body: Container(),
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          onTap: (index) {
            setState(() {
              _page = index;
            });
          },
          // onTap: (index) {

          //   if (index == 0) {
          //   Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => HomePage()));
          //   } else if (index == 1) {
          //   Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => SearchPage()));
          //   } else if (index == 2) {
          //   Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => ChatPage()));
          //   } else {
          //   Navigator.push(context,
          //   MaterialPageRoute(builder: (context) => ProfilePage()));
          //   }
          //   },
          items: [
            CurvedNavigationBarItem(child: Icon(Icons.home), label: "Home"),
            CurvedNavigationBarItem(child: Icon(Icons.search), label: "Search"),
            CurvedNavigationBarItem(child: Icon(Icons.message), label: "Chat"),
            CurvedNavigationBarItem(
                child: Icon(Icons.perm_identity), label: "Profile"),
          ]),
    );
  }
}
