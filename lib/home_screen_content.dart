import 'package:flutter/material.dart';
import 'package:gogame/utils/images.dart';
import 'package:gogame/utils/strings.dart';
import 'package:gogame/widgets/auto_scroll_carousel.dart';
import 'package:gogame/widgets/game_card.dart';
import 'package:gogame/widgets/two_color_text.dart';

class HomeScreenContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AutoScrollCarousel(images: carouselImages),
          SizedBox(height: 20),
          TwoColorText(
            text: ourGames,
            textStyle: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              ourGameDescription,
              textAlign: TextAlign.center,
            ),
          ),
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: carouselImages.length,
            itemBuilder: (_, index) => GameCard(
              image: carouselImages[index],
              text: gameNames[index],
            ),
          ),
        ],
      ),
    );
  }
}
