import 'package:flutter/material.dart';
import 'package:nasa_space_apps/pages/mainpages/articles.dart';
import 'package:nasa_space_apps/pages/mainpages/trophypage.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});
  static final route = '/quizpage';

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  List<String> questions = [];
  List<List<String>> answers = [];

  final List<Color> answerColors = [
    Colors.blue,
    Colors.blue,
    Colors.blue,
    Colors.blue,
  ];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Map<String, dynamic> quizData =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    questions = quizData['questions'];
    answers = quizData['answers'];
  }

  void selectAnswer(int answerIndex) {
    setState(() {
      selectedAnswerIndex = answerIndex;

      Future.delayed(Duration(seconds: 2), () {
        if (currentQuestionIndex < questions.length - 1) {
          setState(() {
            currentQuestionIndex++;
            selectedAnswerIndex = -1;
          });
        } else {
          Navigator.of(context).pushReplacementNamed(
            Trophy.route,
            arguments: articles[currentQuestionIndex].image2,
          );
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Quiz',
          style: TextStyle(
              color: Color.fromARGB(255, 10, 44, 71),
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.blue),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(8, 20, 8, 150),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Color.fromARGB(255, 255, 255, 255)],
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        questions[currentQuestionIndex],
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: List.generate(
                    answers[currentQuestionIndex].length,
                    (index) => QuizAnswerButton(
                      answerIndex: index,
                      text: answers[currentQuestionIndex][index],
                      isSelected: selectedAnswerIndex == index,
                      onTap: () {
                        if (selectedAnswerIndex == -1) {
                          selectAnswer(index);
                        }
                      },
                      color: answerColors[index % answerColors.length],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuizAnswerButton extends StatelessWidget {
  final int answerIndex;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  final Color color;

  QuizAnswerButton({
    required this.answerIndex,
    required this.text,
    required this.isSelected,
    required this.onTap,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.fromLTRB(6, 10, 6, 10),
        margin: const EdgeInsets.symmetric(vertical: 0),
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromARGB(255, 3, 55, 97) : color,
          border: Border.all(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
