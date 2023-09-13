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
  Recipe(this.label, this.imgUrl, this.servings, this.ingredients, this.method);

  /* -------------------------------------------------------------------------- */
  /*                                   Methods                                  */
  /* -------------------------------------------------------------------------- */
  static List<Recipe> samples = [
    Recipe(
      'French Toast',
      'assets/images/french-toast.jpg',
      4,
      [
        Ingredient(2, '', 'Eggs'),
        Ingredient(1.5, 'cups', 'Milk'),
        Ingredient(0.5, 'Tbsps', 'Vanilla extract'),
        Ingredient(4, 'slices', 'Bread'),
        Ingredient(0.75, 'Tbsps', 'Maple syrup'),
        Ingredient(1, 'cup', 'Mixed berries'),
        Ingredient(1, 'tbsp', 'Butter')
      ],
      [
        Step(1, 'Crack the eggs into a bowl and whisk until well mixed.'),
        Step(2,
            'Mix the milk and vanilla into the egg mixture and pour into a baking tray.'),
        Step(3, 'Dip the slices of bread into the mixture and coat evenly.'),
        Step(4, 'Heat a frying pan to medium and coat it with butter.'),
        Step(5,
            'Place the coated bread in the pan and cook on both sides until golden brown.'),
        Step(6, 'Remove from the pan and place on a plate to cool.'),
        Step(7, 'Serve with a drizzle of maple syrup and mixed berries.'),
      ],
    ),
    Recipe(
      'Hotcakes',
      'assets/images/hotcakes.jpg',
      2,
      [
        Ingredient(2, 'cups', 'All purpose flour'),
        Ingredient(4, 'tbsp', 'White Sugar'),
        Ingredient(2, 'tsp', 'Baking powder'),
        Ingredient(0.5, 'tsp', 'Baking soda'),
        Ingredient(0.5, 'tsp', 'Salt'),
        Ingredient(2, '', 'Eggs'),
        Ingredient(4, 'tbsp', 'Unsalted butter (melted)'),
        Ingredient(1, 'cup', 'Milk'),
        Ingredient(0.25, 'cup', 'Buttermilk'),
        Ingredient(1, 'tsp', 'Vanilla extract'),
        Ingredient(1, 'cup', 'Toppings of choice'),
      ],
      [
        Step(1, 'Mix the dry ingredients together in a bowl.'),
        Step(2, 'Add the wet ingredients and mix until just combined.'),
        Step(3, 'Heat a pan to medium and coat it with butter.'),
        Step(4, 'Pour the batter into the pan and cook until golden brown.'),
        Step(5, 'Serve with your favorite toppings.'),
      ],
    ),
    Recipe(
      'Scrambled Eggs',
      'assets/images/scrambled-eggs.jpg',
      2,
      [
        Ingredient(2, '', 'Eggs'),
        Ingredient(0.5, 'tsp', 'Salt'),
        Ingredient(0.5, 'tsp', 'Pepper'),
        Ingredient(1, 'tbsp', 'Butter'),
        Ingredient(0.5, 'cup', 'Milk'),
      ],
      [
        Step(1, 'Crack the eggs into a bowl and whisk until well mixed.'),
        Step(2, 'Add the salt and pepper and milk and whisk again.'),
        Step(3, 'Heat a pan to medium and coat it with butter.'),
        Step(4, 'Pour the mixture into the pan and cook until scrambled.'),
        Step(5, 'Place on a plate and serve.'),
      ],
    ),
    Recipe(
      'Grilled Salmon on Vegetables',
      'assets/images/salmon.jpg',
      1,
      [
        Ingredient(1, 'fillet', 'Salmon'),
        Ingredient(1, 'cup', 'Vegetables'),
        Ingredient(1, 'tbsp', 'Olive oil'),
        Ingredient(1, 'tsp', 'Salt'),
        Ingredient(1, 'tsp', 'Pepper'),
      ],
      [
        Step(1, 'Season the salmon with salt and pepper.'),
        Step(2, 'Heat the olive oil in a pan over medium heat.'),
        Step(3,
            'Add the salmon and vegetables and cook until the salmon is cooked through.'),
        Step(4, 'Serve with your favorite sides.'),
      ],
    ),
  ];
}

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
  Ingredient(this.quantity, this.measure, this.name);
}

class Step {
  /* -------------------------------------------------------------------------- */
  /*                                 Properties                                 */
  /* -------------------------------------------------------------------------- */
  int stepNumber;
  String step;

  /* -------------------------------------------------------------------------- */
  /*                                Constructors                                */
  /* -------------------------------------------------------------------------- */
  Step(this.stepNumber, this.step);
}
