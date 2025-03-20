import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Top Left box
            Align(
              alignment: Alignment.topLeft,
              child: box("Top Left", Colors.red),
            ),
            // Top Right box
            Align(
              alignment: Alignment.topRight,
              child: box("Top Right", Colors.blue),
            ),
            // Bottom Left box
            Align(
              alignment: Alignment.bottomLeft,
              child: box("Bottom Left", Colors.green),
            ),
            // Bottom Right box
            Align(
              alignment: Alignment.bottomRight,
              child: box("Bottom Right", Colors.orange),
            ),
            // Center box
            Align(
              alignment: Alignment.center,
              child: box("Center", Colors.purple),
            ),
          ],
        ),
      ),
    );
  }

  Widget box(String text, Color color) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(12),
      color: color,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    );
  }
}
