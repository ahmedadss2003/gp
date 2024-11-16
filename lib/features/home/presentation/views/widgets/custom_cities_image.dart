import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomCitiesImage extends StatelessWidget {
  const CustomCitiesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:  BorderRadius.circular(18.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CachedNetworkImage(
                    imageUrl: "https://e0.pxfuel.com/wallpapers/770/177/desktop-wallpaper-cairo-thumbnail.jpg",
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
          const Text("Cairo", style: TextStyle(color: Colors.white, fontSize: 35, fontFamily: "gilroy"),),

        ],
      ),
    );
  }
}

