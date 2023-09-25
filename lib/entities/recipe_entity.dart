import 'package:realm/realm.dart';

part 'recipe_entity.g.dart';

@RealmModel()
class _Step {
  @PrimaryKey()
  @MapTo('step_number')
  late int stepNumber;

  @MapTo('step')
  late String step;
}

@RealmModel()
class _Ingredient {
  @PrimaryKey()
  late final int id;

  @MapTo('quantity')
  late double quantity;
  @MapTo('measure')
  late String measure;
  @MapTo('name')
  late String name;
}

@RealmModel()
@MapTo("Recipe")
class _RecipeEntity {
  @PrimaryKey()
  late final int id;

  @MapTo('label')
  late String label;

  @MapTo('image')
  late String imgUrl;

  @MapTo('servings')
  late int servings;

  @MapTo('ingredients')
  late List<_Ingredient> ingredients;

  @MapTo('method')
  late List<_Step> method;
}
