import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  /* -------------------------------------------------------------------------- */
  /*                                 Properties                                 */
  /* -------------------------------------------------------------------------- */
  final Recipe recipe;

  /* -------------------------------------------------------------------------- */
  /*                                Constructors                                */
  /* -------------------------------------------------------------------------- */
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  /* -------------------------------------------------------------------------- */
  /*                                   Methods                                  */
  /* -------------------------------------------------------------------------- */
  @override
  _RecipeDetailState createState() {
    // For serving sizes
    int _sliderVal = 1;

    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.recipe.imgUrl),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.recipe.label,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),

            // Display Ingredients
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(9.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                    '${ingredient.quantity} ${ingredient.measure} ${ingredient.name}',
                  );
                },
              ),
            ),
            Slider(
                min: 1,
                max: 10,
                divisions: 10,
                label: '${_sliderVal * widget.recipe.servings} servings',
                value: _sliderVal.toDouble(),
                onChanged: (newValue) {
                  setState(() {
                    _sliderVal = newValue.round();
                  });
                }),
          ],
        ),
      ),
    );
  }
}
