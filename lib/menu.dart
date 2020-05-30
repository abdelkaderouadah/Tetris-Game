import 'package:flutter/material.dart';
import 'package:my_tetris_app/main.dart';
import 'package:my_tetris_app/menuButton.dart';

class Menu extends StatefulWidget {
  State<StatefulWidget> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  void onPlayClicked() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => GameScreen()),
    );
  }

  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Tetris',
            style: TextStyle(
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
                color: Colors.green[300],
                shadows: [
                  Shadow(
                    color: Colors.white12,
                    blurRadius: 8.0,
                    offset: Offset(2.0, 2.0),
                  )
                ]),
          ),
          MenuButton(onPlayClicked),
        ],
      ),
    );
  }
}