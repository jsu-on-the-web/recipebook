import 'package:realm/realm.dart';

part 'ingredient.g.dart';

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
