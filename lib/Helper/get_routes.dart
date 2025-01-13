import 'package:get/get.dart';

import '../Models/news_model.dart';
import '../Screens/HomePage/home_page.dart';
import '../Screens/HomePage/news_details_page.dart';


class Routes {
  Routes._();

  static const String homePage = '/homePage';
  static const String newsDetailsPage = '/newsDetailsPage';

  static final routes = [
    GetPage(name: homePage, page: () => const HomePageScreen()),

  ];
}
