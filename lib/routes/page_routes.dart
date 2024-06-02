import 'package:get/get.dart';
import 'package:surabaya_tourism/pages/aktivitas_screen.dart';
import 'package:surabaya_tourism/pages/detail_screen.dart';
import 'package:surabaya_tourism/pages/hasil_screen.dart';
import 'package:surabaya_tourism/pages/home_screen.dart';
import 'package:surabaya_tourism/pages/motivasi_screen.dart';
import 'package:surabaya_tourism/pages/service_screen.dart';
import 'package:surabaya_tourism/pages/splash_screen.dart';
import 'package:surabaya_tourism/routes/route_names.dart';

class PageRouteApp {
  static final pages = [
    GetPage(name: RouteName.splash, page: () => const SplashScreen()),
    GetPage(name: RouteName.home, page: () => const HomeScreen()),
    GetPage(name: RouteName.motivation, page: () => const MotivationScreen()),
    GetPage(name: RouteName.service, page: () => const ServiceScreen()),
    GetPage(name: RouteName.aktivitas, page: () => const AktivitasScreen()),
    GetPage(name: RouteName.hasil, page: () => const HasilScreen()),
    GetPage(name: RouteName.detail, page: () => const DetailScreen()),
  ];
}
