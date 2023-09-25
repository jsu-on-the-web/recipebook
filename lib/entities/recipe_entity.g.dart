// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_entity.dart';

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

class RecipeEntity extends _RecipeEntity
    with RealmEntity, RealmObjectBase, RealmObject {
  RecipeEntity(
    int id,
    String label,
    String imgUrl,
    int servings, {
    Iterable<Ingredient> ingredients = const [],
    Iterable<Step> method = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'label', label);
    RealmObjectBase.set(this, 'image', imgUrl);
    RealmObjectBase.set(this, 'servings', servings);
    RealmObjectBase.set<RealmList<Ingredient>>(
        this, 'ingredients', RealmList<Ingredient>(ingredients));
    RealmObjectBase.set<RealmList<Step>>(
        this, 'method', RealmList<Step>(method));
  }

  RecipeEntity._();

  @override
  int get id => RealmObjectBase.get<int>(this, 'id') as int;
  @override
  set id(int value) => throw RealmUnsupportedSetError();

  @override
  String get label => RealmObjectBase.get<String>(this, 'label') as String;
  @override
  set label(String value) => RealmObjectBase.set(this, 'label', value);

  @override
  String get imgUrl => RealmObjectBase.get<String>(this, 'image') as String;
  @override
  set imgUrl(String value) => RealmObjectBase.set(this, 'image', value);

  @override
  int get servings => RealmObjectBase.get<int>(this, 'servings') as int;
  @override
  set servings(int value) => RealmObjectBase.set(this, 'servings', value);

  @override
  RealmList<Ingredient> get ingredients =>
      RealmObjectBase.get<Ingredient>(this, 'ingredients')
          as RealmList<Ingredient>;
  @override
  set ingredients(covariant RealmList<Ingredient> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<Step> get method =>
      RealmObjectBase.get<Step>(this, 'method') as RealmList<Step>;
  @override
  set method(covariant RealmList<Step> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<RecipeEntity>> get changes =>
      RealmObjectBase.getChanges<RecipeEntity>(this);

  @override
  RecipeEntity freeze() => RealmObjectBase.freezeObject<RecipeEntity>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(RecipeEntity._);
    return const SchemaObject(ObjectType.realmObject, RecipeEntity, 'Recipe', [
      SchemaProperty('id', RealmPropertyType.int, primaryKey: true),
      SchemaProperty('label', RealmPropertyType.string),
      SchemaProperty('imgUrl', RealmPropertyType.string, mapTo: 'image'),
      SchemaProperty('servings', RealmPropertyType.int),
      SchemaProperty('ingredients', RealmPropertyType.object,
          linkTarget: 'Ingredient', collectionType: RealmCollectionType.list),
      SchemaProperty('method', RealmPropertyType.object,
          linkTarget: 'Step', collectionType: RealmCollectionType.list),
    ]);
  }
}
