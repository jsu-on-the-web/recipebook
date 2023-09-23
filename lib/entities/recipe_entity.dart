import 'package:realm/realm.dart';
import 'package:recipebook/entities/ingredient.dart';
import 'package:recipebook/entities/step.dart';

part 'recipe.g.dart';

@RealmModel()
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
  late List<Ingredient> ingredients;

  @MapTo('method')
  late List<Step> method;
}
