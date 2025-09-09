import 'package:drift/drift.dart';

class ProductTable extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  IntColumn get price => integer()();

  BoolColumn get isNegotiable => boolean().withDefault(const Constant(false))();

  // Drift doesn't have a direct List<String> type.
  // Common approach: store as JSON or comma-separated string.
  TextColumn get imageURLs => text().map(const StringListConverter())();

  TextColumn get description => text()();

  TextColumn get condition => text()();

  TextColumn get location => text()();

  TextColumn get material => text()();

  TextColumn get color => text()();

  TextColumn get sellerNote => text().nullable()();

  IntColumn get categoryId => integer()();

  BoolColumn get isAdSpendEnabled =>
      boolean().withDefault(const Constant(false))();

  TextColumn get selectedAdSpend => text().nullable()();

  RealColumn get packageAmount => real().nullable()();

  IntColumn get packageDays => integer().nullable()();
}

/// Converter for List<String> <-> String (JSON encoding/decoding)
class StringListConverter extends TypeConverter<List<String>, String> {
  const StringListConverter();

  @override
  List<String> fromSql(String fromDb) {
    return fromDb.isEmpty ? [] : List<String>.from(fromDb.split(','));
  }

  @override
  String toSql(List<String> value) {
    return value.join(',');
  }
}
