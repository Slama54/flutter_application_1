import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4,
      child: Column(children: [
        ListTile(
          title: Text("500 dt par moins"),
          subtitle: Text("s+1, 50m"),
          trailing: Icon(Icons.favorite_outline),
        ),
        Container(
          child: Image.asset("assets/home.jpg"),
        ),
        Container(
          padding: EdgeInsets.all(16),
          child: Text("Situé à Paris, à moins de 700 mètres de la gare du Nord et à moins de 1 km de la gare de l'Est"),
        )
      ],),
    );
  }
}