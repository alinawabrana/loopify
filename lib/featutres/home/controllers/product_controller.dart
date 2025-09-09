import 'package:loopify/data/repositories/product/product_repository.dart';
import 'package:loopify/interfaces/product_interface.dart';

import '../models/product/product_model.dart';

class ProductController implements ProductInterface {
  @override
  Future<List<ProductModel>> getAllProducts() async {
    try {
      return ProductRepository().getAllProducts();
    } catch (e) {
      throw ('Error while fetching products: $e');
    }
  }

  @override
  Future<ProductModel> getProductById(int id) async {
    try {
      return ProductRepository().getProductById(id);
    } catch (e) {
      throw ('Error while fetching product: $e');
    }
  }

  @override
  Future<void> createProduct(ProductModel product) async {
    try {
      ProductRepository().createProduct(product);
    } catch (e) {
      throw ('Error while adding product: $e');
    }
  }

  @override
  Future<void> updateProductById(int id, ProductModel product) async {
    try {
      ProductRepository().updateProductById(id, product);
    } catch (e) {
      throw ('Error while updating product: $e');
    }
  }

  @override
  Future<void> deleteProductById(int id) async {
    try {
      ProductRepository().deleteProductById(id);
    } catch (e) {
      throw ('Error while updating product: $e');
    }
  }
}
