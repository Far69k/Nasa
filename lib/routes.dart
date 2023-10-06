import 'package:flutter/material.dart';
import 'package:nasa_space_apps/pages/mainpages/articlepage.dart';
import 'package:nasa_space_apps/pages/mainpages/articles.dart';
import 'package:nasa_space_apps/pages/mainpages/home.dart';
import 'package:nasa_space_apps/pages/mainpages/mainscreen.dart';
import 'package:nasa_space_apps/pages/mainpages/profile.dart';
import 'package:nasa_space_apps/pages/mainpages/quizpage.dart';
import 'package:nasa_space_apps/pages/mainpages/trophypage.dart';
import 'package:nasa_space_apps/pages/tutorialpages/firsttutpage.dart';
import 'package:nasa_space_apps/pages/tutorialpages/loadingscreen.dart';
import 'package:nasa_space_apps/pages/tutorialpages/secondtutpage.dart';
import 'package:nasa_space_apps/pages/tutorialpages/thirdtutpage.dart';

Map<String, WidgetBuilder> routes = {
  LoadingScreen.route: (context) => LoadingScreen(),
  FirstTutPage.route: (context) => FirstTutPage(),
  SecondTutPage.route: (context) => SecondTutPage(),
  thirdTutPage.route: (context) => thirdTutPage(),
  Home.route: (context) => Home(),
  Profile.route: (context) => Profile(),
  Articles.route: (context) => Articles(),
  mainScreen.route: (context) => mainScreen(),
  ArticlePage.route: (context) => ArticlePage(),
  QuizPage.route: (context) => QuizPage(),
  Trophy.route: (context) => Trophy(),
};
