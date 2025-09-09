import 'package:loopify/featutres/home/models/product/product_model.dart';

abstract interface class ProductInterface {
  Future<List<ProductModel>> getAllProducts();

  Future<ProductModel> getProductById(int id);

  Future<void> createProduct(ProductModel product);

  Future<void> updateProductById(int id, ProductModel product);

  Future<void> deleteProductById(int id);
}
