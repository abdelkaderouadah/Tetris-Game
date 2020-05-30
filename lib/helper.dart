import 'dart:math';
import 'package:flutter/material.dart';
import 'package:my_tetris_app/blocks/block.dart';
import 'package:my_tetris_app/blocks/iblock.dart';
import 'package:my_tetris_app/blocks/jblock.dart';
import 'package:my_tetris_app/blocks/Lblock.dart';
import 'package:my_tetris_app/blocks/sblock.dart';
import 'package:my_tetris_app/blocks/sqblock.dart';
import 'package:my_tetris_app/blocks/Tblock.dart';
import 'package:my_tetris_app/blocks/zblock.dart';
import 'package:my_tetris_app/game.dart';

Block getRandomBlock() {
  int randomNr = Random().nextInt(7);
   switch (randomNr) {
    case 0:
      return IBlock(BOARD_WIDTH);
    case 1:
      return JBlock(BOARD_WIDTH);
    case 2:
      return LBlock(BOARD_WIDTH);
    case 3:
      return SBlock(BOARD_WIDTH);
    case 4:
      return SquareBlock(BOARD_WIDTH);
    case 5:
      return TBlock(BOARD_WIDTH);
    case 6:
      return ZBlock(BOARD_WIDTH);
  }
}

Widget getTetrisPoint(Color color) {
  return Container(
    width: POINT_SIZE,
    height: POINT_SIZE,
    decoration: new BoxDecoration(
      color: color,
      shape: BoxShape.rectangle,
    ),
  );
}

Widget getGameOverText(int score) {
  return Center(
    child: Text(
      'Game Over \nEnd Score: $score',
      style: TextStyle(
          fontSize: 35.0,
          fontWeight: FontWeight.bold,
          color: Colors.green[300],
          shadows: [
            Shadow(
              color: Colors.white12,
              blurRadius: 3.0,
              offset: Offset(2.0, 2.0),
            )
          ]),
    ),
  );
}
