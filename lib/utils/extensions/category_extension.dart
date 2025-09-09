import 'package:loopify/database/app_database.dart';
import 'package:loopify/featutres/home/models/category_model.dart';

extension CategoryMapper on CategoryTableData {
  CategoryModel toCategoryModel() =>
      CategoryModel(id: id, label: label, imageURL: imageUrl);
}

extension CategoryTableMapper on CategoryModel {
  CategoryTableCompanion toCompanion() =>
      CategoryTableCompanion.insert(label: label, imageUrl: imageURL);
}
