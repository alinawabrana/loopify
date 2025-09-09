import 'package:flutter/material.dart';
import 'package:loopify/database/app_database.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  AppDatabase();

  runApp(const MyApp());
}
