import 'package:loopify/database/app_database.dart';
import 'package:loopify/featutres/home/models/product/product_model.dart';
import 'package:loopify/interfaces/product_interface.dart';
import 'package:loopify/utils/extensions/product_extension.dart';

class ProductRepository implements ProductInterface {
  final db = AppDatabase();

  @override
  Future<List<ProductModel>> getAllProducts() async {
    try {
      final productData = await db.select(db.productTable).get();
      return productData.map((product) => product.toProductModel()).toList();
    } catch (e) {
      throw ('Error: $e');
    }
  }

  @override
  Future<ProductModel> getProductById(int id) async {
    try {
      final product = await (db.select(
        db.productTable,
      )..where((product) => product.id.equals(id))).getSingle();

      return product.toProductModel();
    } catch (e) {
      throw ('Error: $e');
    }
  }

  @override
  Future<void> createProduct(ProductModel product) async {
    try {
      final newProduct = product.toCompanion();

      await db.into(db.productTable).insert(newProduct);
    } catch (e) {
      throw ('Error: $e');
    }
  }

  @override
  Future<void> updateProductById(int id, ProductModel product) async {
    try {
      final newProduct = product.toCompanion();

      await (db.update(
        db.productTable,
      )..where((product) => product.id.equals(id))).write(newProduct);
    } catch (e) {
      throw ('Error: $e');
    }
  }

  @override
  Future<void> deleteProductById(int id) async {
    try {
      await (db.delete(
        db.productTable,
      )..where((product) => product.id.equals(id))).go();
    } catch (e) {
      throw ('Error: $e');
    }
  }
}
