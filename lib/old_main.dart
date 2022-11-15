import 'package:flutter/material.dart';

void main() => runApp(const Game());

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const Text("Points"),
          GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 15),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: ((context, index) {
                return Center(
                  child: Container(
                    // padding: EdgeInsets.all(4),
                    color: Colors.white,
                    child: ClipRRect(borderRadius: BorderRadius.circular(3)),
                  ),
                );
              }))
        ],
      ),
    );
  }
}
