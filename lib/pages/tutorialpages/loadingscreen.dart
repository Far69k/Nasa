import 'package:flutter/material.dart';
import 'package:nasa_space_apps/pages/tutorialpages/firsttutpage.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});
  static final route = '/loadingscreen';

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1), () {
      Navigator.of(context).pushReplacement(_createRoute());
    });
  }

  PageRouteBuilder _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => FirstTutPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(position: offsetAnimation, child: child);
      },
    );
  }

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
              Color.fromARGB(246, 17, 132, 226),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'EMIT\nCARTE',
                  style: TextStyle(
                    height: 0.80,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 70,
                  ),
                ),
              ),
              SizedBox(height: 20),
              const Text(
                'Explore the wonders of EMIT!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
