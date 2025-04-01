import 'dart:math';

class DiceLogic {
  static final List<int> dices = [1, 2, 3, 4, 5, 6];

  static List<int> rollDices() {
    return List.generate(3, (index) => dices[Random().nextInt(dices.length)]);
  }

  static String getResult(List<int> diceValues) {
    int sum = diceValues.reduce((a, b) => a + b);
    if ((diceValues[0] == 1 && diceValues[1] == 1 && diceValues[2] == 1) ||
        (diceValues[0] == 6 && diceValues[1] == 6 && diceValues[2] == 6)) {
      return 'Bảo';
    }
    return sum <= 10 ? 'Xỉu' : 'Tài';
  }
}
