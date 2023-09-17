import 'package:flutter/material.dart';
import 'package:quizz_app/data/question.dart';
import 'package:quizz_app/splash_screen.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentPos = 0;

  void changeQuestion() {
    setState(() {
      currentPos++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentPos];

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25),
            child: Text(
              currentQuestion.text,
              style: const TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          const SizedBox(height: 30),
          ...currentQuestion.getShuffledAnswer().map((answer) {
            return CustomButton(answerText: answer, onTap: changeQuestion);
          })
          // for (int i = 0; i < 4; i++)
          //   Column(
          //     children: [
          //       CustomButton(
          //           answerText: currentQuestion.answer[i],
          //           onTap: changeQuestion),
          //       const SizedBox(height: 10)
          //     ],
          //   )
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;
  const CustomButton(
      {super.key, required this.answerText, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purpleAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)),
        child: Text(
          answerText,
          style: const TextStyle(fontSize: 20),
        ));
  }
}
