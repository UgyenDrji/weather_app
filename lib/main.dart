import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/bindings/weather_binding.dart';
import 'package:weather_app/views/bottom_nav_bar.dart';
import 'package:weather_app/views/forcast_view.dart';
import 'package:weather_app/views/search.dart';
import 'package:weather_app/views/splash.dart';
import 'package:weather_app/views/weather_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashScreen',
      getPages: [
        GetPage(
          name: '/weather',
          page: () => WeatherView(),
          binding: WeatherBindings(),
        ),
        GetPage(name: '/splashScreen', page: ()=>SplashScreen(),
          binding: WeatherBindings(),
        ),
        GetPage(
          name: '/forecast',
          page: () => ForecastView(),
          binding: WeatherBindings(),
        ),
        GetPage(name: '/bottom',
            page: ()=>PracticeBottomNavBar(),
            binding: WeatherBindings()),
        GetPage(name: '/search',
            page: ()=>WeatherSearch(),
            binding: WeatherBindings())
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
