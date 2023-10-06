import 'package:flutter/material.dart';
import 'package:nasa_space_apps/pages/mainpages/articles.dart'; // Import the Articles page

class Trophy extends StatelessWidget {
  const Trophy({super.key});
  static final route = 'trophy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image
          Container(
            child: Image.asset(
              'assets/EMIT_history_teacher.png',
              height: 1250,
              width: 600,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              SizedBox(
                height: 750,
              ),
              Center(
                child: ElevatedButton(
                  style: ButtonStyle(
                      elevation: MaterialStatePropertyAll(0),
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('Go to Articles'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
