import 'package:flutter/material.dart';

// Widget tiêu đề
Widget buildTitleText(String text) {
  return Text(
    text,
    style: const TextStyle(
      fontSize: 50,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

// Widget hiển thị kết quả
Widget buildButton(String result) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
    decoration: BoxDecoration(
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Text(
      result,
      style: const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Colors.pinkAccent,
      ),
    ),
  );
}

// Widget hiển thị tổng điểm
Widget buildSumText(List<int> diceValues) {
  int sum = diceValues.reduce((a, b) => a + b);
  return Text(
    "${diceValues[0]} + ${diceValues[1]} + ${diceValues[2]} = $sum",
    style: const TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
  );
}

// Widget hiển thị hình ảnh xúc xắc
Widget buildDiceImage(int diceNumber) {
  return Image.asset('assets/images/dice-$diceNumber.png', width: 100);
}
