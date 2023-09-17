import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  static const height = SizedBox(height: 75);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        height,
        Image.asset(
          './assets/quiz-logo.png',
          height: 250,
          width: 250,
        ),
        height,
        const Text(
          "Learn Flutter in fun way!",
          style: TextStyle(fontSize: 28, color: Colors.white),
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: startQuiz,
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purpleAccent,
              padding: const EdgeInsets.all(15),
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: const Text("Get Started!", style: TextStyle(fontSize: 18)),
        )
      ],
    ));
  }
}
