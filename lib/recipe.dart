class Recipe {
  /* -------------------------------------------------------------------------- */
  /*                                 Properties                                 */
  /* -------------------------------------------------------------------------- */
  String label;
  String imgUrl;

  /* -------------------------------------------------------------------------- */
  /*                                Constructors                                */
  /* -------------------------------------------------------------------------- */
  Recipe(this.label, this.imgUrl);

  /* -------------------------------------------------------------------------- */
  /*                                   Methods                                  */
  /* -------------------------------------------------------------------------- */
  static List<Recipe> samples = [
    Recipe('French Toast', 'assets/images/french-toast.jpg'),
    Recipe('Hotcakes', 'assets/images/hotcakes.jpg'),
    Recipe('Scrambled Eggs', 'assets/images/scrambled-eggs.jpg'),
    Recipe('Grilled Salmon on Vegetables', 'assets/images/salmon.jpg'),
  ];
}
