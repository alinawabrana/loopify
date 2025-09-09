import 'package:flutter/material.dart';
import 'package:loopify/featutres/home/screens/add_product/add_update_product_screen.dart';
import 'package:loopify/utils/helper/helpers.dart';

import '../../../home/controllers/product_controller.dart';

class ProductListing extends StatefulWidget {
  const ProductListing({super.key});

  @override
  State<ProductListing> createState() => _ProductListingState();
}

class _ProductListingState extends State<ProductListing> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ProductController().getAllProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        }
        if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        }
        final products = snapshot.data!;
        return ListView.separated(
          itemCount: products.length,
          separatorBuilder: (_, _) => SizedBox(height: 24),
          itemBuilder: (context, index) {
            final product = products[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AddUpdateProductScreen(
                      product: product,
                      isEditable: true,
                    ),
                  ),
                ).then((value) {
                  if (value == true) setState(() {});
                });
              },
              child: Row(
                spacing: 12,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AHelper.buildImage(product.imageURLs[0]),
                    width: 54,
                    height: 54,
                    fit: BoxFit.fill,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 54,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.title,
                            style: Theme.of(context).textTheme.bodyMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            'USD ${product.price}',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        ProductController().deleteProductById(product.id!);
                        products.remove(product);
                      });
                    },
                    iconSize: 24,
                    icon: Icon(
                      Icons.delete_outline,
                      color: Colors.redAccent,
                      size: 24,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
