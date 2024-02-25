import 'package:drift/drift.dart';

@DataClassName("AppContato")
class Contato extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
  DateTimeColumn get dataNascimento => dateTime().nullable()();
}