import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:login/core/utils/app_colors.dart';
import 'package:login/features/home/presentation/views/widgets/custom_animated_text.dart';
import 'package:login/features/home/presentation/views/widgets/custom_cities_image.dart';
import 'package:login/features/home/presentation/views/widgets/custom_grid_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kPrimaryColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.person, size: 35),
          )
        ],
      ),
      body:  const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child:  CustomScrollView(
          slivers: [
             SliverToBoxAdapter(
              child: Column(
                children: [
                   SizedBox(height: 100),
                   CustomAnimatedTextKit(),
                   SizedBox(height: 30),
                   CustomCitiesImage(),
                ],
              ),
            ),
            SliverToBoxAdapter(child:  SizedBox(height: 20)),
            
            // Optimized SliverGrid
            CustomSliverGridView()
          ],
        ),
      ),
      bottomNavigationBar:ConvexAppBar(
        backgroundColor: AppColors.kPurpleColor,
        style: TabStyle.react,
        items:const[
          TabItem(icon: Icon(Icons.home) , title: "Home" , ),
          TabItem(icon: Icon(Icons.home) , title: "Home"),
          TabItem(icon: Icon(Icons.home) , title: "Home"),
          
        ] ,
        initialActiveIndex: 0,
        ),
    );
  }
}

