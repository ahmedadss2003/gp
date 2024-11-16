import 'package:flutter/material.dart';
import 'package:login/features/home/presentation/views/widgets/custom_cities_image.dart';

class CustomSliverGridView extends StatelessWidget {
  const CustomSliverGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SliverGrid(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 20,
              ),
              delegate: SliverChildBuilderDelegate(
              (context, index) =>  const CustomCitiesImage(),
              childCount: 10, // Number of grid items
            ),
            );
  }
}