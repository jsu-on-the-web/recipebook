import 'package:firebase_core/firebase_core.dart';
import 'package:recipebook/recipe.dart';
import '../firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/* -------------------------------------------------------------------------- */
/*                            Converting and Saving                           */
/* -------------------------------------------------------------------------- */
void saveRecipe(Recipe recipe) async {
  await FirebaseFirestore.instance.collection('recipes').add(recipe.toJson());
}

// Recipe readRecipe(DocumentReference<Map<String, dynamic>> snapshot) async {
//   DocumentSnapshot<Map<String, dynamic>> data = await snapshot.get();

//   // Check if all the fields being checked are there
// }
