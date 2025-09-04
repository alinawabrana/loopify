import 'package:flutter/material.dart';
import 'package:loopify/data/data.dart';
import 'package:loopify/featutres/shop/screens/product_detail/widgets/carousel_product_view.dart';
import 'package:loopify/featutres/shop/screens/product_detail/widgets/product_cta.dart';
import 'package:loopify/featutres/shop/screens/product_detail/widgets/product_detail_section.dart';
import 'package:loopify/featutres/shop/screens/product_detail/widgets/product_images.dart';
import 'package:loopify/featutres/shop/screens/product_detail/widgets/product_seller/product_overview.dart';
import 'package:loopify/featutres/shop/screens/product_detail/widgets/product_seller/seller_detail.dart';
import 'package:loopify/featutres/shop/screens/product_detail/widgets/product_seller/seller_note.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselProductView(productImages: productImages),
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
