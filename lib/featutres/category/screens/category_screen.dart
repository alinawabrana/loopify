import 'package:flutter/material.dart';
import 'package:loopify/featutres/category/screens/widgets/product_listing.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Listed Items',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        titleSpacing: 20,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 24, 19, 24),
        child: ProductListing(),
      ),
    );
  }
}
