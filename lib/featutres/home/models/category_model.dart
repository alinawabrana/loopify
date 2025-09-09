import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    int? id,
    required String label,
    required String imageURL,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, Object?> json) =>
      _$CategoryModelFromJson(json);
}
