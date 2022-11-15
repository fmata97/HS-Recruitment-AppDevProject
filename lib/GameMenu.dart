import 'package:flutter/material.dart';

class GameMenu extends StatefulWidget {
  const GameMenu({super.key});

  @override
  GameMenuState createState() => GameMenuState();
}

class GameMenuState extends State<GameMenu> {
  void _pushGame() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(title: Text("WELP")),
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Snake Game'),
              actions: [
                IconButton(
                    icon: const Icon(Icons.question_mark), onPressed: (() {}))
              ],
              backgroundColor: Colors.grey[900],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  MaterialButton(
                    onPressed: _pushGame,
                    color: Colors.grey,
                    child: const Text('Start'),
                  ),
                  MaterialButton(
                    onPressed: (() {}),
                    color: Colors.grey,
                    child: const Text('Stats'),
                  ),
                ],
              ),
            )));
  }
}
