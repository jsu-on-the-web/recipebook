// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'step.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Step extends _Step with RealmEntity, RealmObjectBase, RealmObject {
  Step(
    int id,
    int stepNumber,
    String step,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'step_number', stepNumber);
    RealmObjectBase.set(this, 'step', step);
  }

  Step._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => throw RealmUnsupportedSetError();

  @override
  int get stepNumber => RealmObjectBase.get<int>(this, 'step_number') as int;
  @override
  set stepNumber(int value) => RealmObjectBase.set(this, 'step_number', value);

  @override
  String get step => RealmObjectBase.get<String>(this, 'step') as String;
  @override
  set step(String value) => RealmObjectBase.set(this, 'step', value);

  @override
  Stream<RealmObjectChanges<Step>> get changes =>
      RealmObjectBase.getChanges<Step>(this);

  @override
  Step freeze() => RealmObjectBase.freezeObject<Step>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Step._);
    return const SchemaObject(ObjectType.realmObject, Step, 'Step', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('stepNumber', RealmPropertyType.int, mapTo: 'step_number'),
      SchemaProperty('step', RealmPropertyType.string),
    ]);
  }
}
