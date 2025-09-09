// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductModel {

 int? get id; String get title; int get price; bool get isNegotiable; List<String> get imageURLs; String get description; String get condition; String get location; String get material; String get color; String? get sellerNote; int get categoryId; bool get isAdSpendEnabled; String? get selectedAdSpend; double? get packageAmount; int? get packageDays;
/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductModelCopyWith<ProductModel> get copyWith => _$ProductModelCopyWithImpl<ProductModel>(this as ProductModel, _$identity);

  /// Serializes this ProductModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.isNegotiable, isNegotiable) || other.isNegotiable == isNegotiable)&&const DeepCollectionEquality().equals(other.imageURLs, imageURLs)&&(identical(other.description, description) || other.description == description)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.location, location) || other.location == location)&&(identical(other.material, material) || other.material == material)&&(identical(other.color, color) || other.color == color)&&(identical(other.sellerNote, sellerNote) || other.sellerNote == sellerNote)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.isAdSpendEnabled, isAdSpendEnabled) || other.isAdSpendEnabled == isAdSpendEnabled)&&(identical(other.selectedAdSpend, selectedAdSpend) || other.selectedAdSpend == selectedAdSpend)&&(identical(other.packageAmount, packageAmount) || other.packageAmount == packageAmount)&&(identical(other.packageDays, packageDays) || other.packageDays == packageDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,isNegotiable,const DeepCollectionEquality().hash(imageURLs),description,condition,location,material,color,sellerNote,categoryId,isAdSpendEnabled,selectedAdSpend,packageAmount,packageDays);

@override
String toString() {
  return 'ProductModel(id: $id, title: $title, price: $price, isNegotiable: $isNegotiable, imageURLs: $imageURLs, description: $description, condition: $condition, location: $location, material: $material, color: $color, sellerNote: $sellerNote, categoryId: $categoryId, isAdSpendEnabled: $isAdSpendEnabled, selectedAdSpend: $selectedAdSpend, packageAmount: $packageAmount, packageDays: $packageDays)';
}


}

/// @nodoc
abstract mixin class $ProductModelCopyWith<$Res>  {
  factory $ProductModelCopyWith(ProductModel value, $Res Function(ProductModel) _then) = _$ProductModelCopyWithImpl;
@useResult
$Res call({
 int? id, String title, int price, bool isNegotiable, List<String> imageURLs, String description, String condition, String location, String material, String color, String? sellerNote, int categoryId, bool isAdSpendEnabled, String? selectedAdSpend, double? packageAmount, int? packageDays
});




}
/// @nodoc
class _$ProductModelCopyWithImpl<$Res>
    implements $ProductModelCopyWith<$Res> {
  _$ProductModelCopyWithImpl(this._self, this._then);

  final ProductModel _self;
  final $Res Function(ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? title = null,Object? price = null,Object? isNegotiable = null,Object? imageURLs = null,Object? description = null,Object? condition = null,Object? location = null,Object? material = null,Object? color = null,Object? sellerNote = freezed,Object? categoryId = null,Object? isAdSpendEnabled = null,Object? selectedAdSpend = freezed,Object? packageAmount = freezed,Object? packageDays = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,isNegotiable: null == isNegotiable ? _self.isNegotiable : isNegotiable // ignore: cast_nullable_to_non_nullable
as bool,imageURLs: null == imageURLs ? _self.imageURLs : imageURLs // ignore: cast_nullable_to_non_nullable
as List<String>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,material: null == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,sellerNote: freezed == sellerNote ? _self.sellerNote : sellerNote // ignore: cast_nullable_to_non_nullable
as String?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,isAdSpendEnabled: null == isAdSpendEnabled ? _self.isAdSpendEnabled : isAdSpendEnabled // ignore: cast_nullable_to_non_nullable
as bool,selectedAdSpend: freezed == selectedAdSpend ? _self.selectedAdSpend : selectedAdSpend // ignore: cast_nullable_to_non_nullable
as String?,packageAmount: freezed == packageAmount ? _self.packageAmount : packageAmount // ignore: cast_nullable_to_non_nullable
as double?,packageDays: freezed == packageDays ? _self.packageDays : packageDays // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductModel].
extension ProductModelPatterns on ProductModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String title,  int price,  bool isNegotiable,  List<String> imageURLs,  String description,  String condition,  String location,  String material,  String color,  String? sellerNote,  int categoryId,  bool isAdSpendEnabled,  String? selectedAdSpend,  double? packageAmount,  int? packageDays)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.isNegotiable,_that.imageURLs,_that.description,_that.condition,_that.location,_that.material,_that.color,_that.sellerNote,_that.categoryId,_that.isAdSpendEnabled,_that.selectedAdSpend,_that.packageAmount,_that.packageDays);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String title,  int price,  bool isNegotiable,  List<String> imageURLs,  String description,  String condition,  String location,  String material,  String color,  String? sellerNote,  int categoryId,  bool isAdSpendEnabled,  String? selectedAdSpend,  double? packageAmount,  int? packageDays)  $default,) {final _that = this;
switch (_that) {
case _ProductModel():
return $default(_that.id,_that.title,_that.price,_that.isNegotiable,_that.imageURLs,_that.description,_that.condition,_that.location,_that.material,_that.color,_that.sellerNote,_that.categoryId,_that.isAdSpendEnabled,_that.selectedAdSpend,_that.packageAmount,_that.packageDays);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String title,  int price,  bool isNegotiable,  List<String> imageURLs,  String description,  String condition,  String location,  String material,  String color,  String? sellerNote,  int categoryId,  bool isAdSpendEnabled,  String? selectedAdSpend,  double? packageAmount,  int? packageDays)?  $default,) {final _that = this;
switch (_that) {
case _ProductModel() when $default != null:
return $default(_that.id,_that.title,_that.price,_that.isNegotiable,_that.imageURLs,_that.description,_that.condition,_that.location,_that.material,_that.color,_that.sellerNote,_that.categoryId,_that.isAdSpendEnabled,_that.selectedAdSpend,_that.packageAmount,_that.packageDays);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductModel implements ProductModel {
  const _ProductModel({this.id, required this.title, required this.price, required this.isNegotiable, required final  List<String> imageURLs, required this.description, required this.condition, required this.location, required this.material, required this.color, this.sellerNote, required this.categoryId, required this.isAdSpendEnabled, this.selectedAdSpend, this.packageAmount, this.packageDays}): _imageURLs = imageURLs;
  factory _ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

@override final  int? id;
@override final  String title;
@override final  int price;
@override final  bool isNegotiable;
 final  List<String> _imageURLs;
@override List<String> get imageURLs {
  if (_imageURLs is EqualUnmodifiableListView) return _imageURLs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_imageURLs);
}

@override final  String description;
@override final  String condition;
@override final  String location;
@override final  String material;
@override final  String color;
@override final  String? sellerNote;
@override final  int categoryId;
@override final  bool isAdSpendEnabled;
@override final  String? selectedAdSpend;
@override final  double? packageAmount;
@override final  int? packageDays;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductModelCopyWith<_ProductModel> get copyWith => __$ProductModelCopyWithImpl<_ProductModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.price, price) || other.price == price)&&(identical(other.isNegotiable, isNegotiable) || other.isNegotiable == isNegotiable)&&const DeepCollectionEquality().equals(other._imageURLs, _imageURLs)&&(identical(other.description, description) || other.description == description)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.location, location) || other.location == location)&&(identical(other.material, material) || other.material == material)&&(identical(other.color, color) || other.color == color)&&(identical(other.sellerNote, sellerNote) || other.sellerNote == sellerNote)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.isAdSpendEnabled, isAdSpendEnabled) || other.isAdSpendEnabled == isAdSpendEnabled)&&(identical(other.selectedAdSpend, selectedAdSpend) || other.selectedAdSpend == selectedAdSpend)&&(identical(other.packageAmount, packageAmount) || other.packageAmount == packageAmount)&&(identical(other.packageDays, packageDays) || other.packageDays == packageDays));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,price,isNegotiable,const DeepCollectionEquality().hash(_imageURLs),description,condition,location,material,color,sellerNote,categoryId,isAdSpendEnabled,selectedAdSpend,packageAmount,packageDays);

@override
String toString() {
  return 'ProductModel(id: $id, title: $title, price: $price, isNegotiable: $isNegotiable, imageURLs: $imageURLs, description: $description, condition: $condition, location: $location, material: $material, color: $color, sellerNote: $sellerNote, categoryId: $categoryId, isAdSpendEnabled: $isAdSpendEnabled, selectedAdSpend: $selectedAdSpend, packageAmount: $packageAmount, packageDays: $packageDays)';
}


}

/// @nodoc
abstract mixin class _$ProductModelCopyWith<$Res> implements $ProductModelCopyWith<$Res> {
  factory _$ProductModelCopyWith(_ProductModel value, $Res Function(_ProductModel) _then) = __$ProductModelCopyWithImpl;
@override @useResult
$Res call({
 int? id, String title, int price, bool isNegotiable, List<String> imageURLs, String description, String condition, String location, String material, String color, String? sellerNote, int categoryId, bool isAdSpendEnabled, String? selectedAdSpend, double? packageAmount, int? packageDays
});




}
/// @nodoc
class __$ProductModelCopyWithImpl<$Res>
    implements _$ProductModelCopyWith<$Res> {
  __$ProductModelCopyWithImpl(this._self, this._then);

  final _ProductModel _self;
  final $Res Function(_ProductModel) _then;

/// Create a copy of ProductModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? title = null,Object? price = null,Object? isNegotiable = null,Object? imageURLs = null,Object? description = null,Object? condition = null,Object? location = null,Object? material = null,Object? color = null,Object? sellerNote = freezed,Object? categoryId = null,Object? isAdSpendEnabled = null,Object? selectedAdSpend = freezed,Object? packageAmount = freezed,Object? packageDays = freezed,}) {
  return _then(_ProductModel(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,isNegotiable: null == isNegotiable ? _self.isNegotiable : isNegotiable // ignore: cast_nullable_to_non_nullable
as bool,imageURLs: null == imageURLs ? _self._imageURLs : imageURLs // ignore: cast_nullable_to_non_nullable
as List<String>,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,condition: null == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String,material: null == material ? _self.material : material // ignore: cast_nullable_to_non_nullable
as String,color: null == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String,sellerNote: freezed == sellerNote ? _self.sellerNote : sellerNote // ignore: cast_nullable_to_non_nullable
as String?,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,isAdSpendEnabled: null == isAdSpendEnabled ? _self.isAdSpendEnabled : isAdSpendEnabled // ignore: cast_nullable_to_non_nullable
as bool,selectedAdSpend: freezed == selectedAdSpend ? _self.selectedAdSpend : selectedAdSpend // ignore: cast_nullable_to_non_nullable
as String?,packageAmount: freezed == packageAmount ? _self.packageAmount : packageAmount // ignore: cast_nullable_to_non_nullable
as double?,packageDays: freezed == packageDays ? _self.packageDays : packageDays // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
