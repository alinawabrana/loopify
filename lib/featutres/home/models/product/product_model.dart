import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const factory ProductModel({
    int? id,
    required String title,
    required int price,
    required bool isNegotiable,
    required List<String> imageURLs,
    required String description,
    required String condition,
    required String location,
    required String material,
    required String color,
    String? sellerNote,
    required int categoryId,
    required bool isAdSpendEnabled,
    String? selectedAdSpend,
    double? packageAmount,
    int? packageDays,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, Object?> json) =>
      _$ProductModelFromJson(json);
}
