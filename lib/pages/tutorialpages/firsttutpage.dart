import 'package:flutter/material.dart';
import 'package:nasa_space_apps/pages/tutorialpages/secondtutpage.dart';

class FirstTutPage extends StatelessWidget {
  const FirstTutPage({super.key});
  static final route = '/firsttutpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            Color.fromARGB(246, 44, 164, 211),
            Color.fromARGB(246, 17, 132, 226)
          ],
        )),
        child: Column(
          children: [
            SizedBox(
              height: 220,
            ),
            Container(
                child: Text(
              'EMIT\nCARTE',
              style: TextStyle(
                  height: 0.80,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 70),
            )),
            SizedBox(
              height: 50,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'EMIT stands for Earth Surface \nMineral Dust Source Investigation.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 175,
            ),
            MaterialButton(
              height: 50,
              onPressed: () {
                Navigator.of(context).pushReplacement(_createRoute());
                ;
              },
              elevation: BouncingScrollSimulation.maxSpringTransferVelocity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Color.fromARGB(255, 81, 164, 241),
              child: Text(
                '     Get Started     ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => SecondTutPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      var offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}
