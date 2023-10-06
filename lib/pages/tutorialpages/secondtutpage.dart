import 'package:flutter/material.dart';
import 'package:nasa_space_apps/pages/tutorialpages/thirdtutpage.dart';

class SecondTutPage extends StatelessWidget {
  const SecondTutPage({super.key});
  static final route = '/secondtutpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(246, 0, 140, 255),
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
                  'It is an imaging system of sensors \nthat measures the mineral composition \nof Earth’s dust source regions.',
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
              },
              elevation: BouncingScrollSimulation.maxSpringTransferVelocity,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              color: Color.fromARGB(255, 81, 164, 241),
              child: Text(
                '     Continue     ',
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
    pageBuilder: (context, animation, secondaryAnimation) => thirdTutPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin =
          Offset(1.0, 0.0); // Start the page transition from the right
      const end = Offset.zero;
      const curve = Curves.easeInOut;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      var offsetAnimation = animation.drive(tween);

      return SlideTransition(position: offsetAnimation, child: child);
    },
  );
}
