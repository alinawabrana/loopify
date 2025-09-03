import 'package:flutter/material.dart';
import 'package:loopify/utils/constants/image_strings.dart';

class BannerImageWithText extends StatelessWidget {
  const BannerImageWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage(AImages.bannerImage1),
                width: double.infinity,
                fit: BoxFit.fitWidth,
                // fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 64,
              left: 30,
              child: RichText(
                text: TextSpan(
                  text: 'GET THEM ',
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 16,
                    letterSpacing: 0.39 * 16, // 39% of font size
                  ),
                  children: [
                    TextSpan(
                      text: 'ALL',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
