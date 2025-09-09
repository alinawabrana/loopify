import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:loopify/data/data.dart';
import 'package:loopify/database/tables/category_table.dart';
import 'package:loopify/database/tables/product_table.dart';
import 'package:loopify/utils/extensions/product_extension.dart';
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [ProductTable, CategoryTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase._internal() : super(_openConnection());

  static final AppDatabase _instance = AppDatabase._internal();

  factory AppDatabase() => _instance;

  @override
  int get schemaVersion => 2;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'app_database',
      native: const DriftNativeOptions(
        // By default, `driftDatabase` from `package:drift_flutter` stores the
        // database files in `getApplicationDocumentsDirectory()`.
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async => await m.createAll(),
      // onUpgrade: stepByStep(
      //   from1To2: (m, schema) async {
      //     await m.createTable(schema.groups);
      //   },
      //   from2To3: (m, schema) async {
      //     await m.createTable(schema.common);
      //   },
      // ),
      beforeOpen: (details) async {
        if (details.wasCreated) {
          for (final product in promotedItems) {
            await into(productTable).insert(product.toCompanion());
          }

          // for (final category in categories) {
          //   await into(categoryTable).insert(category.toCompanion());
          // }
        }
      },
      onUpgrade: (m, from, to) async {
        if (from == 1) {
          // Adding new nullable columns
          await m.addColumn(productTable, productTable.packageDays);
          await m.addColumn(productTable, productTable.packageAmount);
        }
      },
    );
  }
}
