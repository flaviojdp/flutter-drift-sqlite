// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ContatoTable extends Contato with TableInfo<$ContatoTable, AppContato> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ContatoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dataNascimentoMeta =
      const VerificationMeta('dataNascimento');
  @override
  late final GeneratedColumn<DateTime> dataNascimento =
      GeneratedColumn<DateTime>('data_nascimento', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, nome, dataNascimento];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'contato';
  @override
  VerificationContext validateIntegrity(Insertable<AppContato> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('data_nascimento')) {
      context.handle(
          _dataNascimentoMeta,
          dataNascimento.isAcceptableOrUnknown(
              data['data_nascimento']!, _dataNascimentoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AppContato map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppContato(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      dataNascimento: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}data_nascimento']),
    );
  }

  @override
  $ContatoTable createAlias(String alias) {
    return $ContatoTable(attachedDatabase, alias);
  }
}

class AppContato extends DataClass implements Insertable<AppContato> {
  final int id;
  final String nome;
  final DateTime? dataNascimento;
  const AppContato({required this.id, required this.nome, this.dataNascimento});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    if (!nullToAbsent || dataNascimento != null) {
      map['data_nascimento'] = Variable<DateTime>(dataNascimento);
    }
    return map;
  }

  ContatoCompanion toCompanion(bool nullToAbsent) {
    return ContatoCompanion(
      id: Value(id),
      nome: Value(nome),
      dataNascimento: dataNascimento == null && nullToAbsent
          ? const Value.absent()
          : Value(dataNascimento),
    );
  }

  factory AppContato.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppContato(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      dataNascimento: serializer.fromJson<DateTime?>(json['dataNascimento']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'dataNascimento': serializer.toJson<DateTime?>(dataNascimento),
    };
  }

  AppContato copyWith(
          {int? id,
          String? nome,
          Value<DateTime?> dataNascimento = const Value.absent()}) =>
      AppContato(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        dataNascimento:
            dataNascimento.present ? dataNascimento.value : this.dataNascimento,
      );
  @override
  String toString() {
    return (StringBuffer('AppContato(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('dataNascimento: $dataNascimento')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, dataNascimento);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppContato &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.dataNascimento == this.dataNascimento);
}

class ContatoCompanion extends UpdateCompanion<AppContato> {
  final Value<int> id;
  final Value<String> nome;
  final Value<DateTime?> dataNascimento;
  const ContatoCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.dataNascimento = const Value.absent(),
  });
  ContatoCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    this.dataNascimento = const Value.absent(),
  }) : nome = Value(nome);
  static Insertable<AppContato> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<DateTime>? dataNascimento,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (dataNascimento != null) 'data_nascimento': dataNascimento,
    });
  }

  ContatoCompanion copyWith(
      {Value<int>? id, Value<String>? nome, Value<DateTime?>? dataNascimento}) {
    return ContatoCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      dataNascimento: dataNascimento ?? this.dataNascimento,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (dataNascimento.present) {
      map['data_nascimento'] = Variable<DateTime>(dataNascimento.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ContatoCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('dataNascimento: $dataNascimento')
          ..write(')'))
        .toString();
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $ContatoTable contato = $ContatoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [contato];
}
