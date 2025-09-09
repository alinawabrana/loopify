// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toInt(),
      isNegotiable: json['isNegotiable'] as bool,
      imageURLs: (json['imageURLs'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      description: json['description'] as String,
      condition: json['condition'] as String,
      location: json['location'] as String,
      material: json['material'] as String,
      color: json['color'] as String,
      sellerNote: json['sellerNote'] as String?,
      categoryId: (json['categoryId'] as num).toInt(),
      isAdSpendEnabled: json['isAdSpendEnabled'] as bool,
      selectedAdSpend: json['selectedAdSpend'] as String?,
      packageAmount: (json['packageAmount'] as num?)?.toDouble(),
      packageDays: (json['packageDays'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'isNegotiable': instance.isNegotiable,
      'imageURLs': instance.imageURLs,
      'description': instance.description,
      'condition': instance.condition,
      'location': instance.location,
      'material': instance.material,
      'color': instance.color,
      'sellerNote': instance.sellerNote,
      'categoryId': instance.categoryId,
      'isAdSpendEnabled': instance.isAdSpendEnabled,
      'selectedAdSpend': instance.selectedAdSpend,
      'packageAmount': instance.packageAmount,
      'packageDays': instance.packageDays,
    };
