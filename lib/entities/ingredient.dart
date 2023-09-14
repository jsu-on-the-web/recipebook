import 'package:realm/realm.dart';

part 'ingredient.g.dart';

@RealmModel()
class _Ingredient {
  @PrimaryKey()
  late final int id;

  late double quantity;
  late String measure;
  late String name;
}
