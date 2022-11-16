import 'package:flutter/material.dart';
import 'Game.dart';

class GameMenu extends StatefulWidget {
  const GameMenu({super.key});

  @override
  GameMenuState createState() => GameMenuState();
}

class GameMenuState extends State<GameMenu> {
  void _pushGame() {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (BuildContext context) {
      return Game();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Color.fromARGB(255, 90, 227, 110),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/snake.png',
                    width: 300,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: _pushGame,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fixedSize: const Size(150, 50),
                      ),
                      child: const Text(
                        'Start',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: (() {}),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fixedSize: const Size(150, 50),
                      ),
                      child: const Text(
                        'Stats',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextButton(
                      onPressed: (() {}),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        fixedSize: const Size(150, 50),
                      ),
                      child: const Text(
                        'Help',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
