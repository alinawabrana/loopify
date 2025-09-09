import 'package:flutter/material.dart';
import 'package:loopify/featutres/home/models/product/product_model.dart';
import 'package:loopify/featutres/home/screens/product_detail/widgets/carousel_product_view.dart';
import 'package:loopify/featutres/home/screens/product_detail/widgets/product_cta.dart';
import 'package:loopify/featutres/home/screens/product_detail/widgets/product_detail_section.dart';
import 'package:loopify/featutres/home/screens/product_detail/widgets/product_images.dart';
import 'package:loopify/featutres/home/screens/product_detail/widgets/product_seller/product_overview.dart';
import 'package:loopify/featutres/home/screens/product_detail/widgets/product_seller/seller_detail.dart';
import 'package:loopify/featutres/home/screens/product_detail/widgets/product_seller/seller_note.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselProductView(productImages: product.imageURLs),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 16, 20, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductImages(productImages: product.imageURLs),
                  SizedBox(height: 24),
                  ProductOverview(
                    title: product.title,
                    description: product.description,
                  ),
                  SizedBox(height: 36),
                  ProductDetailsSection(product: product),
                  SizedBox(height: 36),
                  SellerDetails(),
                  SizedBox(height: 36),
                  SellerNote(sellerNote: product.sellerNote ?? 'N/A'),
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
