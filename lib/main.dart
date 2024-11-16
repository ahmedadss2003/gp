import 'package:flutter/material.dart';
import 'package:login/core/utils/app_colors.dart';
import 'package:login/features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const TourEgyptApp());
}

class TourEgyptApp extends StatelessWidget {
  const TourEgyptApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.kPrimaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}
