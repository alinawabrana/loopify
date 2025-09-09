// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $ProductTableTable extends ProductTable
    with TableInfo<$ProductTableTable, ProductTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProductTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<int> price = GeneratedColumn<int>(
    'price',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isNegotiableMeta = const VerificationMeta(
    'isNegotiable',
  );
  @override
  late final GeneratedColumn<bool> isNegotiable = GeneratedColumn<bool>(
    'is_negotiable',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_negotiable" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  @override
  late final GeneratedColumnWithTypeConverter<List<String>, String> imageURLs =
      GeneratedColumn<String>(
        'image_u_r_ls',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: true,
      ).withConverter<List<String>>($ProductTableTable.$converterimageURLs);
  static const VerificationMeta _descriptionMeta = const VerificationMeta(
    'description',
  );
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
    'description',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _conditionMeta = const VerificationMeta(
    'condition',
  );
  @override
  late final GeneratedColumn<String> condition = GeneratedColumn<String>(
    'condition',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _locationMeta = const VerificationMeta(
    'location',
  );
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
    'location',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _materialMeta = const VerificationMeta(
    'material',
  );
  @override
  late final GeneratedColumn<String> material = GeneratedColumn<String>(
    'material',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sellerNoteMeta = const VerificationMeta(
    'sellerNote',
  );
  @override
  late final GeneratedColumn<String> sellerNote = GeneratedColumn<String>(
    'seller_note',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _categoryIdMeta = const VerificationMeta(
    'categoryId',
  );
  @override
  late final GeneratedColumn<int> categoryId = GeneratedColumn<int>(
    'category_id',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isAdSpendEnabledMeta = const VerificationMeta(
    'isAdSpendEnabled',
  );
  @override
  late final GeneratedColumn<bool> isAdSpendEnabled = GeneratedColumn<bool>(
    'is_ad_spend_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_ad_spend_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _selectedAdSpendMeta = const VerificationMeta(
    'selectedAdSpend',
  );
  @override
  late final GeneratedColumn<String> selectedAdSpend = GeneratedColumn<String>(
    'selected_ad_spend',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _packageAmountMeta = const VerificationMeta(
    'packageAmount',
  );
  @override
  late final GeneratedColumn<double> packageAmount = GeneratedColumn<double>(
    'package_amount',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _packageDaysMeta = const VerificationMeta(
    'packageDays',
  );
  @override
  late final GeneratedColumn<int> packageDays = GeneratedColumn<int>(
    'package_days',
    aliasedName,
    true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    price,
    isNegotiable,
    imageURLs,
    description,
    condition,
    location,
    material,
    color,
    sellerNote,
    categoryId,
    isAdSpendEnabled,
    selectedAdSpend,
    packageAmount,
    packageDays,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'product_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<ProductTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
        _priceMeta,
        price.isAcceptableOrUnknown(data['price']!, _priceMeta),
      );
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('is_negotiable')) {
      context.handle(
        _isNegotiableMeta,
        isNegotiable.isAcceptableOrUnknown(
          data['is_negotiable']!,
          _isNegotiableMeta,
        ),
      );
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description']!,
          _descriptionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('condition')) {
      context.handle(
        _conditionMeta,
        condition.isAcceptableOrUnknown(data['condition']!, _conditionMeta),
      );
    } else if (isInserting) {
      context.missing(_conditionMeta);
    }
    if (data.containsKey('location')) {
      context.handle(
        _locationMeta,
        location.isAcceptableOrUnknown(data['location']!, _locationMeta),
      );
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (data.containsKey('material')) {
      context.handle(
        _materialMeta,
        material.isAcceptableOrUnknown(data['material']!, _materialMeta),
      );
    } else if (isInserting) {
      context.missing(_materialMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('seller_note')) {
      context.handle(
        _sellerNoteMeta,
        sellerNote.isAcceptableOrUnknown(data['seller_note']!, _sellerNoteMeta),
      );
    }
    if (data.containsKey('category_id')) {
      context.handle(
        _categoryIdMeta,
        categoryId.isAcceptableOrUnknown(data['category_id']!, _categoryIdMeta),
      );
    } else if (isInserting) {
      context.missing(_categoryIdMeta);
    }
    if (data.containsKey('is_ad_spend_enabled')) {
      context.handle(
        _isAdSpendEnabledMeta,
        isAdSpendEnabled.isAcceptableOrUnknown(
          data['is_ad_spend_enabled']!,
          _isAdSpendEnabledMeta,
        ),
      );
    }
    if (data.containsKey('selected_ad_spend')) {
      context.handle(
        _selectedAdSpendMeta,
        selectedAdSpend.isAcceptableOrUnknown(
          data['selected_ad_spend']!,
          _selectedAdSpendMeta,
        ),
      );
    }
    if (data.containsKey('package_amount')) {
      context.handle(
        _packageAmountMeta,
        packageAmount.isAcceptableOrUnknown(
          data['package_amount']!,
          _packageAmountMeta,
        ),
      );
    }
    if (data.containsKey('package_days')) {
      context.handle(
        _packageDaysMeta,
        packageDays.isAcceptableOrUnknown(
          data['package_days']!,
          _packageDaysMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProductTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProductTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      price: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}price'],
      )!,
      isNegotiable: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_negotiable'],
      )!,
      imageURLs: $ProductTableTable.$converterimageURLs.fromSql(
        attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}image_u_r_ls'],
        )!,
      ),
      description: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}description'],
      )!,
      condition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}condition'],
      )!,
      location: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location'],
      )!,
      material: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}material'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      )!,
      sellerNote: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}seller_note'],
      ),
      categoryId: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}category_id'],
      )!,
      isAdSpendEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_ad_spend_enabled'],
      )!,
      selectedAdSpend: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}selected_ad_spend'],
      ),
      packageAmount: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}package_amount'],
      ),
      packageDays: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}package_days'],
      ),
    );
  }

  @override
  $ProductTableTable createAlias(String alias) {
    return $ProductTableTable(attachedDatabase, alias);
  }

  static TypeConverter<List<String>, String> $converterimageURLs =
      const StringListConverter();
}

class ProductTableData extends DataClass
    implements Insertable<ProductTableData> {
  final int id;
  final String title;
  final int price;
  final bool isNegotiable;
  final List<String> imageURLs;
  final String description;
  final String condition;
  final String location;
  final String material;
  final String color;
  final String? sellerNote;
  final int categoryId;
  final bool isAdSpendEnabled;
  final String? selectedAdSpend;
  final double? packageAmount;
  final int? packageDays;
  const ProductTableData({
    required this.id,
    required this.title,
    required this.price,
    required this.isNegotiable,
    required this.imageURLs,
    required this.description,
    required this.condition,
    required this.location,
    required this.material,
    required this.color,
    this.sellerNote,
    required this.categoryId,
    required this.isAdSpendEnabled,
    this.selectedAdSpend,
    this.packageAmount,
    this.packageDays,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['price'] = Variable<int>(price);
    map['is_negotiable'] = Variable<bool>(isNegotiable);
    {
      map['image_u_r_ls'] = Variable<String>(
        $ProductTableTable.$converterimageURLs.toSql(imageURLs),
      );
    }
    map['description'] = Variable<String>(description);
    map['condition'] = Variable<String>(condition);
    map['location'] = Variable<String>(location);
    map['material'] = Variable<String>(material);
    map['color'] = Variable<String>(color);
    if (!nullToAbsent || sellerNote != null) {
      map['seller_note'] = Variable<String>(sellerNote);
    }
    map['category_id'] = Variable<int>(categoryId);
    map['is_ad_spend_enabled'] = Variable<bool>(isAdSpendEnabled);
    if (!nullToAbsent || selectedAdSpend != null) {
      map['selected_ad_spend'] = Variable<String>(selectedAdSpend);
    }
    if (!nullToAbsent || packageAmount != null) {
      map['package_amount'] = Variable<double>(packageAmount);
    }
    if (!nullToAbsent || packageDays != null) {
      map['package_days'] = Variable<int>(packageDays);
    }
    return map;
  }

  ProductTableCompanion toCompanion(bool nullToAbsent) {
    return ProductTableCompanion(
      id: Value(id),
      title: Value(title),
      price: Value(price),
      isNegotiable: Value(isNegotiable),
      imageURLs: Value(imageURLs),
      description: Value(description),
      condition: Value(condition),
      location: Value(location),
      material: Value(material),
      color: Value(color),
      sellerNote: sellerNote == null && nullToAbsent
          ? const Value.absent()
          : Value(sellerNote),
      categoryId: Value(categoryId),
      isAdSpendEnabled: Value(isAdSpendEnabled),
      selectedAdSpend: selectedAdSpend == null && nullToAbsent
          ? const Value.absent()
          : Value(selectedAdSpend),
      packageAmount: packageAmount == null && nullToAbsent
          ? const Value.absent()
          : Value(packageAmount),
      packageDays: packageDays == null && nullToAbsent
          ? const Value.absent()
          : Value(packageDays),
    );
  }

  factory ProductTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProductTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      price: serializer.fromJson<int>(json['price']),
      isNegotiable: serializer.fromJson<bool>(json['isNegotiable']),
      imageURLs: serializer.fromJson<List<String>>(json['imageURLs']),
      description: serializer.fromJson<String>(json['description']),
      condition: serializer.fromJson<String>(json['condition']),
      location: serializer.fromJson<String>(json['location']),
      material: serializer.fromJson<String>(json['material']),
      color: serializer.fromJson<String>(json['color']),
      sellerNote: serializer.fromJson<String?>(json['sellerNote']),
      categoryId: serializer.fromJson<int>(json['categoryId']),
      isAdSpendEnabled: serializer.fromJson<bool>(json['isAdSpendEnabled']),
      selectedAdSpend: serializer.fromJson<String?>(json['selectedAdSpend']),
      packageAmount: serializer.fromJson<double?>(json['packageAmount']),
      packageDays: serializer.fromJson<int?>(json['packageDays']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'price': serializer.toJson<int>(price),
      'isNegotiable': serializer.toJson<bool>(isNegotiable),
      'imageURLs': serializer.toJson<List<String>>(imageURLs),
      'description': serializer.toJson<String>(description),
      'condition': serializer.toJson<String>(condition),
      'location': serializer.toJson<String>(location),
      'material': serializer.toJson<String>(material),
      'color': serializer.toJson<String>(color),
      'sellerNote': serializer.toJson<String?>(sellerNote),
      'categoryId': serializer.toJson<int>(categoryId),
      'isAdSpendEnabled': serializer.toJson<bool>(isAdSpendEnabled),
      'selectedAdSpend': serializer.toJson<String?>(selectedAdSpend),
      'packageAmount': serializer.toJson<double?>(packageAmount),
      'packageDays': serializer.toJson<int?>(packageDays),
    };
  }

  ProductTableData copyWith({
    int? id,
    String? title,
    int? price,
    bool? isNegotiable,
    List<String>? imageURLs,
    String? description,
    String? condition,
    String? location,
    String? material,
    String? color,
    Value<String?> sellerNote = const Value.absent(),
    int? categoryId,
    bool? isAdSpendEnabled,
    Value<String?> selectedAdSpend = const Value.absent(),
    Value<double?> packageAmount = const Value.absent(),
    Value<int?> packageDays = const Value.absent(),
  }) => ProductTableData(
    id: id ?? this.id,
    title: title ?? this.title,
    price: price ?? this.price,
    isNegotiable: isNegotiable ?? this.isNegotiable,
    imageURLs: imageURLs ?? this.imageURLs,
    description: description ?? this.description,
    condition: condition ?? this.condition,
    location: location ?? this.location,
    material: material ?? this.material,
    color: color ?? this.color,
    sellerNote: sellerNote.present ? sellerNote.value : this.sellerNote,
    categoryId: categoryId ?? this.categoryId,
    isAdSpendEnabled: isAdSpendEnabled ?? this.isAdSpendEnabled,
    selectedAdSpend: selectedAdSpend.present
        ? selectedAdSpend.value
        : this.selectedAdSpend,
    packageAmount: packageAmount.present
        ? packageAmount.value
        : this.packageAmount,
    packageDays: packageDays.present ? packageDays.value : this.packageDays,
  );
  ProductTableData copyWithCompanion(ProductTableCompanion data) {
    return ProductTableData(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      price: data.price.present ? data.price.value : this.price,
      isNegotiable: data.isNegotiable.present
          ? data.isNegotiable.value
          : this.isNegotiable,
      imageURLs: data.imageURLs.present ? data.imageURLs.value : this.imageURLs,
      description: data.description.present
          ? data.description.value
          : this.description,
      condition: data.condition.present ? data.condition.value : this.condition,
      location: data.location.present ? data.location.value : this.location,
      material: data.material.present ? data.material.value : this.material,
      color: data.color.present ? data.color.value : this.color,
      sellerNote: data.sellerNote.present
          ? data.sellerNote.value
          : this.sellerNote,
      categoryId: data.categoryId.present
          ? data.categoryId.value
          : this.categoryId,
      isAdSpendEnabled: data.isAdSpendEnabled.present
          ? data.isAdSpendEnabled.value
          : this.isAdSpendEnabled,
      selectedAdSpend: data.selectedAdSpend.present
          ? data.selectedAdSpend.value
          : this.selectedAdSpend,
      packageAmount: data.packageAmount.present
          ? data.packageAmount.value
          : this.packageAmount,
      packageDays: data.packageDays.present
          ? data.packageDays.value
          : this.packageDays,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProductTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('price: $price, ')
          ..write('isNegotiable: $isNegotiable, ')
          ..write('imageURLs: $imageURLs, ')
          ..write('description: $description, ')
          ..write('condition: $condition, ')
          ..write('location: $location, ')
          ..write('material: $material, ')
          ..write('color: $color, ')
          ..write('sellerNote: $sellerNote, ')
          ..write('categoryId: $categoryId, ')
          ..write('isAdSpendEnabled: $isAdSpendEnabled, ')
          ..write('selectedAdSpend: $selectedAdSpend, ')
          ..write('packageAmount: $packageAmount, ')
          ..write('packageDays: $packageDays')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    price,
    isNegotiable,
    imageURLs,
    description,
    condition,
    location,
    material,
    color,
    sellerNote,
    categoryId,
    isAdSpendEnabled,
    selectedAdSpend,
    packageAmount,
    packageDays,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProductTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.price == this.price &&
          other.isNegotiable == this.isNegotiable &&
          other.imageURLs == this.imageURLs &&
          other.description == this.description &&
          other.condition == this.condition &&
          other.location == this.location &&
          other.material == this.material &&
          other.color == this.color &&
          other.sellerNote == this.sellerNote &&
          other.categoryId == this.categoryId &&
          other.isAdSpendEnabled == this.isAdSpendEnabled &&
          other.selectedAdSpend == this.selectedAdSpend &&
          other.packageAmount == this.packageAmount &&
          other.packageDays == this.packageDays);
}

class ProductTableCompanion extends UpdateCompanion<ProductTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<int> price;
  final Value<bool> isNegotiable;
  final Value<List<String>> imageURLs;
  final Value<String> description;
  final Value<String> condition;
  final Value<String> location;
  final Value<String> material;
  final Value<String> color;
  final Value<String?> sellerNote;
  final Value<int> categoryId;
  final Value<bool> isAdSpendEnabled;
  final Value<String?> selectedAdSpend;
  final Value<double?> packageAmount;
  final Value<int?> packageDays;
  const ProductTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.price = const Value.absent(),
    this.isNegotiable = const Value.absent(),
    this.imageURLs = const Value.absent(),
    this.description = const Value.absent(),
    this.condition = const Value.absent(),
    this.location = const Value.absent(),
    this.material = const Value.absent(),
    this.color = const Value.absent(),
    this.sellerNote = const Value.absent(),
    this.categoryId = const Value.absent(),
    this.isAdSpendEnabled = const Value.absent(),
    this.selectedAdSpend = const Value.absent(),
    this.packageAmount = const Value.absent(),
    this.packageDays = const Value.absent(),
  });
  ProductTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required int price,
    this.isNegotiable = const Value.absent(),
    required List<String> imageURLs,
    required String description,
    required String condition,
    required String location,
    required String material,
    required String color,
    this.sellerNote = const Value.absent(),
    required int categoryId,
    this.isAdSpendEnabled = const Value.absent(),
    this.selectedAdSpend = const Value.absent(),
    this.packageAmount = const Value.absent(),
    this.packageDays = const Value.absent(),
  }) : title = Value(title),
       price = Value(price),
       imageURLs = Value(imageURLs),
       description = Value(description),
       condition = Value(condition),
       location = Value(location),
       material = Value(material),
       color = Value(color),
       categoryId = Value(categoryId);
  static Insertable<ProductTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<int>? price,
    Expression<bool>? isNegotiable,
    Expression<String>? imageURLs,
    Expression<String>? description,
    Expression<String>? condition,
    Expression<String>? location,
    Expression<String>? material,
    Expression<String>? color,
    Expression<String>? sellerNote,
    Expression<int>? categoryId,
    Expression<bool>? isAdSpendEnabled,
    Expression<String>? selectedAdSpend,
    Expression<double>? packageAmount,
    Expression<int>? packageDays,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (price != null) 'price': price,
      if (isNegotiable != null) 'is_negotiable': isNegotiable,
      if (imageURLs != null) 'image_u_r_ls': imageURLs,
      if (description != null) 'description': description,
      if (condition != null) 'condition': condition,
      if (location != null) 'location': location,
      if (material != null) 'material': material,
      if (color != null) 'color': color,
      if (sellerNote != null) 'seller_note': sellerNote,
      if (categoryId != null) 'category_id': categoryId,
      if (isAdSpendEnabled != null) 'is_ad_spend_enabled': isAdSpendEnabled,
      if (selectedAdSpend != null) 'selected_ad_spend': selectedAdSpend,
      if (packageAmount != null) 'package_amount': packageAmount,
      if (packageDays != null) 'package_days': packageDays,
    });
  }

  ProductTableCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<int>? price,
    Value<bool>? isNegotiable,
    Value<List<String>>? imageURLs,
    Value<String>? description,
    Value<String>? condition,
    Value<String>? location,
    Value<String>? material,
    Value<String>? color,
    Value<String?>? sellerNote,
    Value<int>? categoryId,
    Value<bool>? isAdSpendEnabled,
    Value<String?>? selectedAdSpend,
    Value<double?>? packageAmount,
    Value<int?>? packageDays,
  }) {
    return ProductTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      price: price ?? this.price,
      isNegotiable: isNegotiable ?? this.isNegotiable,
      imageURLs: imageURLs ?? this.imageURLs,
      description: description ?? this.description,
      condition: condition ?? this.condition,
      location: location ?? this.location,
      material: material ?? this.material,
      color: color ?? this.color,
      sellerNote: sellerNote ?? this.sellerNote,
      categoryId: categoryId ?? this.categoryId,
      isAdSpendEnabled: isAdSpendEnabled ?? this.isAdSpendEnabled,
      selectedAdSpend: selectedAdSpend ?? this.selectedAdSpend,
      packageAmount: packageAmount ?? this.packageAmount,
      packageDays: packageDays ?? this.packageDays,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (price.present) {
      map['price'] = Variable<int>(price.value);
    }
    if (isNegotiable.present) {
      map['is_negotiable'] = Variable<bool>(isNegotiable.value);
    }
    if (imageURLs.present) {
      map['image_u_r_ls'] = Variable<String>(
        $ProductTableTable.$converterimageURLs.toSql(imageURLs.value),
      );
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (condition.present) {
      map['condition'] = Variable<String>(condition.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (material.present) {
      map['material'] = Variable<String>(material.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (sellerNote.present) {
      map['seller_note'] = Variable<String>(sellerNote.value);
    }
    if (categoryId.present) {
      map['category_id'] = Variable<int>(categoryId.value);
    }
    if (isAdSpendEnabled.present) {
      map['is_ad_spend_enabled'] = Variable<bool>(isAdSpendEnabled.value);
    }
    if (selectedAdSpend.present) {
      map['selected_ad_spend'] = Variable<String>(selectedAdSpend.value);
    }
    if (packageAmount.present) {
      map['package_amount'] = Variable<double>(packageAmount.value);
    }
    if (packageDays.present) {
      map['package_days'] = Variable<int>(packageDays.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProductTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('price: $price, ')
          ..write('isNegotiable: $isNegotiable, ')
          ..write('imageURLs: $imageURLs, ')
          ..write('description: $description, ')
          ..write('condition: $condition, ')
          ..write('location: $location, ')
          ..write('material: $material, ')
          ..write('color: $color, ')
          ..write('sellerNote: $sellerNote, ')
          ..write('categoryId: $categoryId, ')
          ..write('isAdSpendEnabled: $isAdSpendEnabled, ')
          ..write('selectedAdSpend: $selectedAdSpend, ')
          ..write('packageAmount: $packageAmount, ')
          ..write('packageDays: $packageDays')
          ..write(')'))
        .toString();
  }
}

class $CategoryTableTable extends CategoryTable
    with TableInfo<$CategoryTableTable, CategoryTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CategoryTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imageUrlMeta = const VerificationMeta(
    'imageUrl',
  );
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
    'image_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, label, imageUrl];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'category_table';
  @override
  VerificationContext validateIntegrity(
    Insertable<CategoryTableData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(
        _imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CategoryTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CategoryTableData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label'],
      )!,
      imageUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}image_url'],
      )!,
    );
  }

  @override
  $CategoryTableTable createAlias(String alias) {
    return $CategoryTableTable(attachedDatabase, alias);
  }
}

class CategoryTableData extends DataClass
    implements Insertable<CategoryTableData> {
  final int id;
  final String label;
  final String imageUrl;
  const CategoryTableData({
    required this.id,
    required this.label,
    required this.imageUrl,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['label'] = Variable<String>(label);
    map['image_url'] = Variable<String>(imageUrl);
    return map;
  }

  CategoryTableCompanion toCompanion(bool nullToAbsent) {
    return CategoryTableCompanion(
      id: Value(id),
      label: Value(label),
      imageUrl: Value(imageUrl),
    );
  }

  factory CategoryTableData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CategoryTableData(
      id: serializer.fromJson<int>(json['id']),
      label: serializer.fromJson<String>(json['label']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'label': serializer.toJson<String>(label),
      'imageUrl': serializer.toJson<String>(imageUrl),
    };
  }

  CategoryTableData copyWith({int? id, String? label, String? imageUrl}) =>
      CategoryTableData(
        id: id ?? this.id,
        label: label ?? this.label,
        imageUrl: imageUrl ?? this.imageUrl,
      );
  CategoryTableData copyWithCompanion(CategoryTableCompanion data) {
    return CategoryTableData(
      id: data.id.present ? data.id.value : this.id,
      label: data.label.present ? data.label.value : this.label,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableData(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, label, imageUrl);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CategoryTableData &&
          other.id == this.id &&
          other.label == this.label &&
          other.imageUrl == this.imageUrl);
}

class CategoryTableCompanion extends UpdateCompanion<CategoryTableData> {
  final Value<int> id;
  final Value<String> label;
  final Value<String> imageUrl;
  const CategoryTableCompanion({
    this.id = const Value.absent(),
    this.label = const Value.absent(),
    this.imageUrl = const Value.absent(),
  });
  CategoryTableCompanion.insert({
    this.id = const Value.absent(),
    required String label,
    required String imageUrl,
  }) : label = Value(label),
       imageUrl = Value(imageUrl);
  static Insertable<CategoryTableData> custom({
    Expression<int>? id,
    Expression<String>? label,
    Expression<String>? imageUrl,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (label != null) 'label': label,
      if (imageUrl != null) 'image_url': imageUrl,
    });
  }

  CategoryTableCompanion copyWith({
    Value<int>? id,
    Value<String>? label,
    Value<String>? imageUrl,
  }) {
    return CategoryTableCompanion(
      id: id ?? this.id,
      label: label ?? this.label,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CategoryTableCompanion(')
          ..write('id: $id, ')
          ..write('label: $label, ')
          ..write('imageUrl: $imageUrl')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ProductTableTable productTable = $ProductTableTable(this);
  late final $CategoryTableTable categoryTable = $CategoryTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    productTable,
    categoryTable,
  ];
}

typedef $$ProductTableTableCreateCompanionBuilder =
    ProductTableCompanion Function({
      Value<int> id,
      required String title,
      required int price,
      Value<bool> isNegotiable,
      required List<String> imageURLs,
      required String description,
      required String condition,
      required String location,
      required String material,
      required String color,
      Value<String?> sellerNote,
      required int categoryId,
      Value<bool> isAdSpendEnabled,
      Value<String?> selectedAdSpend,
      Value<double?> packageAmount,
      Value<int?> packageDays,
    });
typedef $$ProductTableTableUpdateCompanionBuilder =
    ProductTableCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<int> price,
      Value<bool> isNegotiable,
      Value<List<String>> imageURLs,
      Value<String> description,
      Value<String> condition,
      Value<String> location,
      Value<String> material,
      Value<String> color,
      Value<String?> sellerNote,
      Value<int> categoryId,
      Value<bool> isAdSpendEnabled,
      Value<String?> selectedAdSpend,
      Value<double?> packageAmount,
      Value<int?> packageDays,
    });

class $$ProductTableTableFilterComposer
    extends Composer<_$AppDatabase, $ProductTableTable> {
  $$ProductTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isNegotiable => $composableBuilder(
    column: $table.isNegotiable,
    builder: (column) => ColumnFilters(column),
  );

  ColumnWithTypeConverterFilters<List<String>, List<String>, String>
  get imageURLs => $composableBuilder(
    column: $table.imageURLs,
    builder: (column) => ColumnWithTypeConverterFilters(column),
  );

  ColumnFilters<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get condition => $composableBuilder(
    column: $table.condition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get material => $composableBuilder(
    column: $table.material,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sellerNote => $composableBuilder(
    column: $table.sellerNote,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isAdSpendEnabled => $composableBuilder(
    column: $table.isAdSpendEnabled,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get selectedAdSpend => $composableBuilder(
    column: $table.selectedAdSpend,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get packageAmount => $composableBuilder(
    column: $table.packageAmount,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get packageDays => $composableBuilder(
    column: $table.packageDays,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ProductTableTableOrderingComposer
    extends Composer<_$AppDatabase, $ProductTableTable> {
  $$ProductTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get price => $composableBuilder(
    column: $table.price,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isNegotiable => $composableBuilder(
    column: $table.isNegotiable,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageURLs => $composableBuilder(
    column: $table.imageURLs,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get condition => $composableBuilder(
    column: $table.condition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get material => $composableBuilder(
    column: $table.material,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sellerNote => $composableBuilder(
    column: $table.sellerNote,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isAdSpendEnabled => $composableBuilder(
    column: $table.isAdSpendEnabled,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get selectedAdSpend => $composableBuilder(
    column: $table.selectedAdSpend,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get packageAmount => $composableBuilder(
    column: $table.packageAmount,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get packageDays => $composableBuilder(
    column: $table.packageDays,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ProductTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $ProductTableTable> {
  $$ProductTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<int> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<bool> get isNegotiable => $composableBuilder(
    column: $table.isNegotiable,
    builder: (column) => column,
  );

  GeneratedColumnWithTypeConverter<List<String>, String> get imageURLs =>
      $composableBuilder(column: $table.imageURLs, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
    column: $table.description,
    builder: (column) => column,
  );

  GeneratedColumn<String> get condition =>
      $composableBuilder(column: $table.condition, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<String> get material =>
      $composableBuilder(column: $table.material, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<String> get sellerNote => $composableBuilder(
    column: $table.sellerNote,
    builder: (column) => column,
  );

  GeneratedColumn<int> get categoryId => $composableBuilder(
    column: $table.categoryId,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isAdSpendEnabled => $composableBuilder(
    column: $table.isAdSpendEnabled,
    builder: (column) => column,
  );

  GeneratedColumn<String> get selectedAdSpend => $composableBuilder(
    column: $table.selectedAdSpend,
    builder: (column) => column,
  );

  GeneratedColumn<double> get packageAmount => $composableBuilder(
    column: $table.packageAmount,
    builder: (column) => column,
  );

  GeneratedColumn<int> get packageDays => $composableBuilder(
    column: $table.packageDays,
    builder: (column) => column,
  );
}

class $$ProductTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ProductTableTable,
          ProductTableData,
          $$ProductTableTableFilterComposer,
          $$ProductTableTableOrderingComposer,
          $$ProductTableTableAnnotationComposer,
          $$ProductTableTableCreateCompanionBuilder,
          $$ProductTableTableUpdateCompanionBuilder,
          (
            ProductTableData,
            BaseReferences<_$AppDatabase, $ProductTableTable, ProductTableData>,
          ),
          ProductTableData,
          PrefetchHooks Function()
        > {
  $$ProductTableTableTableManager(_$AppDatabase db, $ProductTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ProductTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ProductTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ProductTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<int> price = const Value.absent(),
                Value<bool> isNegotiable = const Value.absent(),
                Value<List<String>> imageURLs = const Value.absent(),
                Value<String> description = const Value.absent(),
                Value<String> condition = const Value.absent(),
                Value<String> location = const Value.absent(),
                Value<String> material = const Value.absent(),
                Value<String> color = const Value.absent(),
                Value<String?> sellerNote = const Value.absent(),
                Value<int> categoryId = const Value.absent(),
                Value<bool> isAdSpendEnabled = const Value.absent(),
                Value<String?> selectedAdSpend = const Value.absent(),
                Value<double?> packageAmount = const Value.absent(),
                Value<int?> packageDays = const Value.absent(),
              }) => ProductTableCompanion(
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
                sellerNote: sellerNote,
                categoryId: categoryId,
                isAdSpendEnabled: isAdSpendEnabled,
                selectedAdSpend: selectedAdSpend,
                packageAmount: packageAmount,
                packageDays: packageDays,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                required int price,
                Value<bool> isNegotiable = const Value.absent(),
                required List<String> imageURLs,
                required String description,
                required String condition,
                required String location,
                required String material,
                required String color,
                Value<String?> sellerNote = const Value.absent(),
                required int categoryId,
                Value<bool> isAdSpendEnabled = const Value.absent(),
                Value<String?> selectedAdSpend = const Value.absent(),
                Value<double?> packageAmount = const Value.absent(),
                Value<int?> packageDays = const Value.absent(),
              }) => ProductTableCompanion.insert(
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
                sellerNote: sellerNote,
                categoryId: categoryId,
                isAdSpendEnabled: isAdSpendEnabled,
                selectedAdSpend: selectedAdSpend,
                packageAmount: packageAmount,
                packageDays: packageDays,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ProductTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ProductTableTable,
      ProductTableData,
      $$ProductTableTableFilterComposer,
      $$ProductTableTableOrderingComposer,
      $$ProductTableTableAnnotationComposer,
      $$ProductTableTableCreateCompanionBuilder,
      $$ProductTableTableUpdateCompanionBuilder,
      (
        ProductTableData,
        BaseReferences<_$AppDatabase, $ProductTableTable, ProductTableData>,
      ),
      ProductTableData,
      PrefetchHooks Function()
    >;
typedef $$CategoryTableTableCreateCompanionBuilder =
    CategoryTableCompanion Function({
      Value<int> id,
      required String label,
      required String imageUrl,
    });
typedef $$CategoryTableTableUpdateCompanionBuilder =
    CategoryTableCompanion Function({
      Value<int> id,
      Value<String> label,
      Value<String> imageUrl,
    });

class $$CategoryTableTableFilterComposer
    extends Composer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CategoryTableTableOrderingComposer
    extends Composer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imageUrl => $composableBuilder(
    column: $table.imageUrl,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CategoryTableTableAnnotationComposer
    extends Composer<_$AppDatabase, $CategoryTableTable> {
  $$CategoryTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);
}

class $$CategoryTableTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CategoryTableTable,
          CategoryTableData,
          $$CategoryTableTableFilterComposer,
          $$CategoryTableTableOrderingComposer,
          $$CategoryTableTableAnnotationComposer,
          $$CategoryTableTableCreateCompanionBuilder,
          $$CategoryTableTableUpdateCompanionBuilder,
          (
            CategoryTableData,
            BaseReferences<
              _$AppDatabase,
              $CategoryTableTable,
              CategoryTableData
            >,
          ),
          CategoryTableData,
          PrefetchHooks Function()
        > {
  $$CategoryTableTableTableManager(_$AppDatabase db, $CategoryTableTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CategoryTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CategoryTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CategoryTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> label = const Value.absent(),
                Value<String> imageUrl = const Value.absent(),
              }) => CategoryTableCompanion(
                id: id,
                label: label,
                imageUrl: imageUrl,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String label,
                required String imageUrl,
              }) => CategoryTableCompanion.insert(
                id: id,
                label: label,
                imageUrl: imageUrl,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CategoryTableTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CategoryTableTable,
      CategoryTableData,
      $$CategoryTableTableFilterComposer,
      $$CategoryTableTableOrderingComposer,
      $$CategoryTableTableAnnotationComposer,
      $$CategoryTableTableCreateCompanionBuilder,
      $$CategoryTableTableUpdateCompanionBuilder,
      (
        CategoryTableData,
        BaseReferences<_$AppDatabase, $CategoryTableTable, CategoryTableData>,
      ),
      CategoryTableData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ProductTableTableTableManager get productTable =>
      $$ProductTableTableTableManager(_db, _db.productTable);
  $$CategoryTableTableTableManager get categoryTable =>
      $$CategoryTableTableTableManager(_db, _db.categoryTable);
}
