import 'package:drift/drift.dart';

class CategoryTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get label => text()();
  TextColumn get imageUrl => text()();
}
