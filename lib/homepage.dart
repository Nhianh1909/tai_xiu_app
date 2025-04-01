import 'package:flutter/material.dart';
import 'background.dart';
import 'dice_logic.dart';
import 'widgetUI.dart'; // Import file widget

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<int> diceValues = [1, 2, 3];
  String result = '';

  void rollDice() {
    setState(() {
      diceValues = DiceLogic.rollDices();
      result = DiceLogic.getResult(diceValues);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Tiêu đề "Tài - Bão - Xỉu"
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buildTitleText("Tài"),
                    buildTitleText("Bão"),
                    buildTitleText("Xỉu"),
                  ],
                ),
                const SizedBox(height: 50),
                // Nút hiển thị kết quả
                buildButton(result),
                const SizedBox(height: 20),
                // Hiển thị tổng điểm
                buildSumText(diceValues),
                const SizedBox(height: 20),
                // Hiển thị xúc xắc
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: diceValues.map((e) => buildDiceImage(e)).toList(),
                ),
                const SizedBox(height: 20),
                // Nút lắc xúc xắc
                ElevatedButton(onPressed: rollDice, child: const Text('Lắc')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
