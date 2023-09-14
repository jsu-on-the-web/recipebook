// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Ingredient extends _Ingredient
    with RealmEntity, RealmObjectBase, RealmObject {
  Ingredient(
    int id,
    double quantity,
    String measure,
    String name,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'quantity', quantity);
    RealmObjectBase.set(this, 'measure', measure);
    RealmObjectBase.set(this, 'name', name);
  }

  Ingredient._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => throw RealmUnsupportedSetError();

  @override
  double get quantity =>
      RealmObjectBase.get<double>(this, 'quantity') as double;
  @override
  set quantity(double value) => RealmObjectBase.set(this, 'quantity', value);

  @override
  String get measure => RealmObjectBase.get<String>(this, 'measure') as String;
  @override
  set measure(String value) => RealmObjectBase.set(this, 'measure', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  Stream<RealmObjectChanges<Ingredient>> get changes =>
      RealmObjectBase.getChanges<Ingredient>(this);

  @override
  Ingredient freeze() => RealmObjectBase.freezeObject<Ingredient>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Ingredient._);
    return const SchemaObject(
        ObjectType.realmObject, Ingredient, 'Ingredient', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('quantity', RealmPropertyType.double),
      SchemaProperty('measure', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }
}
