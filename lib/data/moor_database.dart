import 'package:flutter/rendering.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Jobs extends Table {
  // autoIncrement sets id column to be the primary key automagically.
  IntColumn get id => integer().autoIncrement()();
  TextColumn get jobTitle => text().withLength(min: 1, max: 50)();
  DateTimeColumn get jobDate => dateTime().nullable()();
}

@UseMoor(tables: [Jobs])
class AppDataBase extends _$AppDataBase {
  AppDataBase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          logStatements: true,
        ));

  @override
  int get schemaVersion => 1;
}
