class Recipe {
  /* -------------------------------------------------------------------------- */
  /*                                 Properties                                 */
  /* -------------------------------------------------------------------------- */
  String label;
  String imgUrl;
  int servings;
  List<Ingredient> ingredients;

  /* -------------------------------------------------------------------------- */
  /*                                Constructors                                */
  /* -------------------------------------------------------------------------- */
  Recipe(this.label, this.imgUrl, this.servings, this.ingredients);

  /* -------------------------------------------------------------------------- */
  /*                                   Methods                                  */
  /* -------------------------------------------------------------------------- */
  static List<Recipe> samples = [
    Recipe('French Toast', 'assets/images/french-toast.jpg', 4, [
      Ingredient(2, '', 'Eggs'),
      Ingredient(1.5, 'cups', 'Milk'),
      Ingredient(0.5, 'Tbsps', 'Vanilla extract'),
      Ingredient(4, 'slices', 'Bread'),
      Ingredient(0.75, 'Tbsps', 'Maple syrup'),
      Ingredient(1, 'cup', 'Mixed berries'),
    ]),
    Recipe('Hotcakes', 'assets/images/hotcakes.jpg', 2, [
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
    ]),
    Recipe('Scrambled Eggs', 'assets/images/scrambled-eggs.jpg', 2, [
      Ingredient(2, '', 'Eggs'),
      Ingredient(0.5, 'tsp', 'Salt'),
      Ingredient(0.5, 'tsp', 'Pepper'),
      Ingredient(1, 'tbsp', 'Butter'),
      Ingredient(0.5, 'cup', 'Milk'),
    ]),
    Recipe('Grilled Salmon on Vegetables', 'assets/images/salmon.jpg', 1, [
      Ingredient(1, 'fillet', 'Salmon'),
      Ingredient(1, 'cup', 'Vegetables'),
      Ingredient(1, 'tbsp', 'Olive oil'),
      Ingredient(1, 'tsp', 'Salt'),
      Ingredient(1, 'tsp', 'Pepper'),
    ]),
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
