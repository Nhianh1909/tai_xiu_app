// homepage.dart
import 'package:flutter/material.dart';
import 'background.dart';
import 'dice_logic.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Text(
                          result,
                          style: const TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:
                              diceValues
                                  .map(
                                    (e) => Image.asset(
                                      'assets/images/dice-$e.png',
                                      width: 80,
                                    ),
                                  )
                                  .toList(),
                        ),
                        const SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: rollDice,
                          child: const Text('Lắc'),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
