import 'package:drift/drift.dart';
import 'package:loopify/database/app_database.dart';
import 'package:loopify/featutres/home/models/product/product_model.dart';

extension ProductMapper on ProductTableData {
  ProductModel toProductModel() => ProductModel(
    id: id,
    title: title,
    price: price,
    isNegotiable: isNegotiable,
    imageURLs: imageURLs,
    description: description,
    condition: condition,
    location: location,
    material: material,
    color: color,
    categoryId: categoryId,
    isAdSpendEnabled: isAdSpendEnabled,
    sellerNote: sellerNote,
    selectedAdSpend: selectedAdSpend,
    packageAmount: packageAmount,
    packageDays: packageDays,
  );
}

extension ProductTableMapper on ProductModel {
  ProductTableCompanion toCompanion() => ProductTableCompanion.insert(
    title: title,
    price: price,
    imageURLs: imageURLs,
    description: description,
    condition: condition,
    location: location,
    material: material,
    color: color,
    categoryId: categoryId,
    isAdSpendEnabled: Value(isAdSpendEnabled),
    isNegotiable: Value(isNegotiable),
    selectedAdSpend: selectedAdSpend == null
        ? const Value.absent()
        : Value(selectedAdSpend),
    sellerNote: sellerNote == null ? const Value.absent() : Value(sellerNote),
    packageAmount: Value(packageAmount),
    packageDays: Value(packageDays),
  );
}
