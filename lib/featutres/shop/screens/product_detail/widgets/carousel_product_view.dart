import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/common/widgets/container/circular_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/svg_image_strings.dart';

class CarouselProductView extends StatefulWidget {
  const CarouselProductView({super.key, required this.productImages});

  final List<String> productImages;

  @override
  State<CarouselProductView> createState() => _CarouselProductViewState();
}

class _CarouselProductViewState extends State<CarouselProductView> {
  late int currentIndex = 0;

  void moveToPage(int newIndex) {
    currentIndex = newIndex;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 390,
      child: Stack(
        children: [
          PageView(
            onPageChanged: moveToPage,
            children: widget.productImages
                .map(
                  (image) => Stack(
                    children: [
                      Image.asset(
                        image,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 217,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0x00131313), Color(0xAD131313)],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                .toList(),
          ),

          Positioned(
            top: 52,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: SizedBox(
                      width: 36,
                      height: 36,
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  Row(
                    spacing: 8,
                    children: [
                      CircularContainer(
                        child: SvgPicture.asset(
                          ASvgImages.shareIcon,
                          width: 20,
                          height: 20,
                        ),
                      ),
                      CircularContainer(
                        child: Icon(
                          Iconsax.heart,
                          size: 20,
                          color: Color(0xFF9CA3AF),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 12,
            width: MediaQuery.of(context).size.width,
            child: Row(
              spacing: 4,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < widget.productImages.length; i++)
                  CircularContainer(
                    width: 8,
                    height: 8,
                    backgroundColor: currentIndex == i
                        ? AColors.primaryBackgroundColor
                        : (i == currentIndex + 1 || i == currentIndex - 1)
                        ? Color(0x80FFFFFF)
                        : Color(0x1AFFFFFF),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
