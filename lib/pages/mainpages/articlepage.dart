import 'package:flutter/material.dart';
import 'package:nasa_space_apps/pages/mainpages/articles.dart';
import 'package:nasa_space_apps/pages/mainpages/quizpage.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});
  static const route = '/articlepage';

  @override
  Widget build(BuildContext context) {
    final article = ModalRoute.of(context)!.settings.arguments as Article;
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(article.image),
              Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(Colors.blue),
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Icon(Icons.arrow_back),
                    ),
                    label: Text(''),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(30, 16, 20, 30),
            child: Text(
              article.body,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(90, 0, 90, 14),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pushNamed(QuizPage.route, arguments: {
                  'questions': article.questions,
                  'answers': article.answers
                });
              },
              child: Text(
                'Take a Quiz',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
