import 'package:realm/realm.dart';
import 'package:recipebook/entities/recipe_entity.dart';
import 'package:recipebook/recipe.dart';

/* -------------------------------------------------------------------------- */
/*                               Opening a realm                              */
/* -------------------------------------------------------------------------- */
void dataCb(Realm realm) {
  final recipes = realm.objects(RecipeEntity.schema);
}

final config = Configuration.local(
  [RecipeEntity.schema],
);

final realm = Realm(config);

/* -------------------------------------------------------------------------- */
/*                               Adding objects                               */
/* -------------------------------------------------------------------------- */

RealmResults<RecipeEntity> recipes = realm.all<RecipeEntity>();
