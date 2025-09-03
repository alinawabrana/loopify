import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loopify/data/data.dart';
import 'package:loopify/featutres/shop/screens/product_detail/widgets/product_detail_row.dart';
import 'package:loopify/utils/common/widgets/container/circular_container.dart';
import 'package:loopify/utils/common/widgets/text_tile.dart';
import 'package:loopify/utils/constants/colors.dart';
import 'package:loopify/utils/constants/image_strings.dart';
import 'package:loopify/utils/constants/svg_image_strings.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselProductView(),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 20, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductImages(productImages: productImages),
                  SizedBox(height: 24),
                  ProductOverview(),
                  SizedBox(height: 36),
                  ProductDetailsSection(),
                  SizedBox(height: 36),
                  SellerDetails(),
                  SizedBox(height: 36),
                  SellerNote(),
                  SizedBox(height: 48),
                  ProductCTA(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CarouselProductView extends StatefulWidget {
  const CarouselProductView({super.key});

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
          Stack(
            children: [
              PageView(
                onPageChanged: moveToPage,
                children: carouselProductImages
                    .map((image) => Image.asset(image, fit: BoxFit.cover))
                    .toList(),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 217,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0x00131313), Color(0xAD131313)],
                    ),
                  ),
                ),
              ),
            ],
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
                for (int i = 0; i < carouselProductImages.length; i++)
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

class ProductCTA extends StatelessWidget {
  const ProductCTA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              // backgroundColor: AColors.primaryColor,
              padding: EdgeInsets.symmetric(
                // horizontal: 62,
                vertical: 19,
              ),
              side: BorderSide(color: AColors.primaryColor, width: 1),
              shape: RoundedRectangleBorder(),
              elevation: 0,
              foregroundColor: AColors.headingTextColor,
              backgroundColor: Colors.transparent,
            ),
            child: Text(
              'CHAT WITH SELLER',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                letterSpacing: 0.06 * 14,
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: TextButton(
            onPressed: () {},
            style: TextButton.styleFrom(
              // backgroundColor: Color(0xFF32B780),
              padding: EdgeInsets.symmetric(
                // horizontal: 62,
                vertical: 20,
              ),
              // shape: RoundedRectangleBorder(),
            ),
            child: Text(
              'REPORT',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                letterSpacing: 0.06 * 14,
                color: AColors.primaryColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SellerNote extends StatelessWidget {
  const SellerNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTile(title: "Seller's note", lineHeight: 1.2),
        Text(
          'Thank you for considering our luxurious Gucci laptop bag! This stunning piece is adorned with exquisite pearls and elegant gold accents, making it the perfect accessory for the modern professional.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1.2,
            color: Color(0xFF4B5563),
          ),
        ),
      ],
    );
  }
}

class SellerDetails extends StatelessWidget {
  const SellerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTile(title: 'Seller details:', lineHeight: 1.2),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularContainer(
              width: 45,
              height: 45,
              backgroundImage: AssetImage(AImages.sellerImage1),
            ),
            SizedBox(width: 8),
            Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextTile(title: 'John Doe', lineHeight: 1.2),
                Text(
                  'Joined Since 2019',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    height: 1.2,
                    color: Color(0xFF6B7280),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class ProductImages extends StatelessWidget {
  const ProductImages({super.key, required this.productImages});

  final List<String> productImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: NeverScrollableScrollPhysics(),
        itemCount: productImages.length,
        itemBuilder: (context, index) => Image.asset(productImages[index]),
      ),
    );
  }
}

class ProductOverview extends StatelessWidget {
  const ProductOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 16,
      children: [
        Text(
          'Luxurious Gucci Laptop Bag Embellished with Stunning Pearls',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            height: 1.1,
            color: Color(0xFF0D111A),
          ),
        ),
        Text(
          'Elevate your style with this luxurious Gucci laptop bag, beautifully adorned with exquisite pearls and elegant gold accents. Perfect for the modern professional, this bag combines functionality with high fashion, ensuring your laptop is both secure and stylish.',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            height: 1.2,
            color: Color(0xFF4B5563),
          ),
        ),
      ],
    );
  }
}

class ProductDetailsSection extends StatelessWidget {
  const ProductDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextTile(title: 'Product details:', lineHeight: 1.2),
        SizedBox(height: 24),
        Column(
          spacing: 18,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailRow(
              title: 'Price',
              detail: 'USD 850',
              isNegotiable: true,
            ),
            ProductDetailRow(title: 'Condition', detail: 'Excellent'),
            ProductDetailRow(title: 'Category', detail: 'Bag'),
            ProductDetailRow(title: 'Location', detail: 'New York'),
            ProductDetailRow(title: 'Material', detail: 'Leather'),
            ProductDetailRow(title: 'Color', detail: 'Brown'),
          ],
        ),
      ],
    );
  }
}
