import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/json_serializable.dart';
import 'dart:convert';

class Recipe {
  /* -------------------------------------------------------------------------- */
  /*                                 Properties                                 */
  /* -------------------------------------------------------------------------- */
  String label;
  String imgUrl;
  int servings;
  List<Ingredient> ingredients;
  List<Step> method;

  /* -------------------------------------------------------------------------- */
  /*                                Constructors                                */
  /* -------------------------------------------------------------------------- */
  Recipe({
    required this.label,
    required this.imgUrl,
    required this.servings,
    required this.ingredients,
    required this.method,
  });

  /* -------------------------------------------------------------------------- */
  /*                                 Converters                                 */
  /* -------------------------------------------------------------------------- */
  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'imgUrl': imgUrl,
      'servings': servings,
      'ingredients': ingredients.map((e) => e.toJson()).toList(),
      'method': method.map((e) => e.toJson()).toList(),
    };
  }

  /* -------------------------------------------------------------------------- */
  /*                                   Methods                                  */
  /* -------------------------------------------------------------------------- */
  static List<Recipe> samples = [
    Recipe(
      label: 'French Toast',
      imgUrl: 'assets/images/french-toast.jpg',
      servings: 4,
      ingredients: [
        Ingredient(quantity: 2, measure: '', name: 'Eggs'),
        Ingredient(quantity: 1.5, measure: 'cups', name: 'Milk'),
        Ingredient(quantity: 0.5, measure: 'Tbsps', name: 'Vanilla extract'),
        Ingredient(quantity: 4, measure: 'slices', name: 'Bread'),
        Ingredient(quantity: 0.75, measure: 'Tbsps', name: 'Maple syrup'),
        Ingredient(quantity: 1, measure: 'cup', name: 'Mixed berries'),
        Ingredient(quantity: 1, measure: 'tbsp', name: 'Butter')
      ],
      method: [
        Step(
            stepNumber: 1,
            step: 'Crack the eggs into a bowl and whisk until well mixed.'),
        Step(
            stepNumber: 2,
            step:
                'Mix the milk and vanilla into the egg mixture and pour into a baking tray.'),
        Step(
            stepNumber: 3,
            step: 'Dip the slices of bread into the mixture and coat evenly.'),
        Step(
            stepNumber: 4,
            step: 'Heat a frying pan to medium and coat it with butter.'),
        Step(
            stepNumber: 5,
            step:
                'Place the coated bread in the pan and cook on both sides until golden brown.'),
        Step(
            stepNumber: 6,
            step: 'Remove from the pan and place on a plate to cool.'),
        Step(
            stepNumber: 7,
            step: 'Serve with a drizzle of maple syrup and mixed berries.'),
      ],
    ),
    Recipe(
      label: 'Hotcakes',
      imgUrl: 'assets/images/hotcakes.jpg',
      servings: 2,
      ingredients: [
        Ingredient(quantity: 2, measure: 'cups', name: 'All purpose flour'),
        Ingredient(quantity: 4, measure: 'tbsp', name: 'White Sugar'),
        Ingredient(quantity: 2, measure: 'tsp', name: 'Baking powder'),
        Ingredient(quantity: 0.5, measure: 'tsp', name: 'Baking soda'),
        Ingredient(quantity: 0.5, measure: 'tsp', name: 'Salt'),
        Ingredient(quantity: 2, measure: '', name: 'Eggs'),
        Ingredient(
            quantity: 4, measure: 'tbsp', name: 'Unsalted butter (melted)'),
        Ingredient(quantity: 1, measure: 'cup', name: 'Milk'),
        Ingredient(quantity: 0.25, measure: 'cup', name: 'Buttermilk'),
        Ingredient(quantity: 1, measure: 'tsp', name: 'Vanilla extract'),
        Ingredient(quantity: 1, measure: 'cup', name: 'Toppings of choice'),
      ],
      method: [
        Step(
            stepNumber: 1, step: 'Mix the dry ingredients together in a bowl.'),
        Step(
            stepNumber: 2,
            step: 'Add the wet ingredients and mix until just combined.'),
        Step(
            stepNumber: 3,
            step: 'Heat a pan to medium and coat it with butter.'),
        Step(
            stepNumber: 4,
            step: 'Pour the batter into the pan and cook until golden brown.'),
        Step(stepNumber: 5, step: 'Serve with your favorite toppings.'),
      ],
    ),
    Recipe(
      label: 'Scrambled Eggs',
      imgUrl: 'assets/images/scrambled-eggs.jpg',
      servings: 2,
      ingredients: [
        Ingredient(quantity: 2, measure: '', name: 'Eggs'),
        Ingredient(quantity: 0.5, measure: 'tsp', name: 'Salt'),
        Ingredient(quantity: 0.5, measure: 'tsp', name: 'Pepper'),
        Ingredient(quantity: 1, measure: 'tbsp', name: 'Butter'),
        Ingredient(quantity: 0.5, measure: 'cup', name: 'Milk'),
      ],
      method: [
        Step(
            stepNumber: 1,
            step: 'Crack the eggs into a bowl and whisk until well mixed.'),
        Step(
            stepNumber: 2,
            step: 'Add the salt and pepper and milk and whisk again.'),
        Step(
            stepNumber: 3,
            step: 'Heat a pan to medium and coat it with butter.'),
        Step(
            stepNumber: 4,
            step: 'Pour the mixture into the pan and cook until scrambled.'),
        Step(stepNumber: 5, step: 'Place on a plate and serve.'),
      ],
    ),
    Recipe(
      label: 'Grilled Salmon on Vegetables',
      imgUrl: 'assets/images/salmon.jpg',
      servings: 1,
      ingredients: [
        Ingredient(quantity: 1, measure: 'fillet', name: 'Salmon'),
        Ingredient(quantity: 1, measure: 'cup', name: 'Vegetables'),
        Ingredient(quantity: 1, measure: 'tbsp', name: 'Olive oil'),
        Ingredient(quantity: 1, measure: 'tsp', name: 'Salt'),
        Ingredient(quantity: 1, measure: 'tsp', name: 'Pepper'),
      ],
      method: [
        Step(stepNumber: 1, step: 'Season the salmon with salt and pepper.'),
        Step(
            stepNumber: 2,
            step: 'Heat the olive oil in a pan over medium heat.'),
        Step(
            stepNumber: 3,
            step:
                'Add the salmon and vegetables and cook until the salmon is cooked through.'),
        Step(stepNumber: 4, step: 'Serve with your favorite sides.'),
      ],
    ),
  ];
}

@JsonSerializable(includeIfNull: true)
class Ingredient {
  /* -------------------------------------------------------------------------- */
  /*                                 Properties                                 */
  /* -------------------------------------------------------------------------- */
  double quantity;
  String measure;
  String name;

  /* -------------------------------------------------------------------------- */
  /*                                Constructors                                */
  /* -------------------------------------------------------------------------- */
  Ingredient({
    required this.quantity,
    required this.measure,
    required this.name,
  });

  /* -------------------------------------------------------------------------- */
  /*                                 Converters                                 */
  /* -------------------------------------------------------------------------- */
  Map<String, dynamic> toJson() {
    return {
      'quantity': quantity,
      'measure': measure,
      'name': name,
    };
  }
}

@JsonSerializable(includeIfNull: false)
class Step {
  /* -------------------------------------------------------------------------- */
  /*                                 Properties                                 */
  /* -------------------------------------------------------------------------- */
  int stepNumber;
  String step;

  /* -------------------------------------------------------------------------- */
  /*                                Constructors                                */
  /* -------------------------------------------------------------------------- */
  Step({
    required this.stepNumber,
    required this.step,
  });

  /* -------------------------------------------------------------------------- */
  /*                                 Converters                                 */
  /* -------------------------------------------------------------------------- */
  Map<String, dynamic> toJson() {
    return {
      'stepNumber': stepNumber,
      'step': step,
    };
  }
}
