import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  /* -------------------------------------------------------------------------- */
  /*                                Constructors                                */
  /* -------------------------------------------------------------------------- */
  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  /* -------------------------------------------------------------------------- */
  /*                                 Properties                                 */
  /* -------------------------------------------------------------------------- */
  final Recipe recipe;

  /* -------------------------------------------------------------------------- */
  /*                                   Methods                                  */
  /* -------------------------------------------------------------------------- */
  @override
  _RecipeDetailState createState() {
    // For serving sizes
    int sliderVal = 1;

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

            const Divider(
              height: 4,
              color: Colors.black,
              endIndent: 14,
              indent: 14,
            ),

            // Display Ingredients
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsetsDirectional.all(9.0),
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (BuildContext context, int index) {
                  final ingredient = widget.recipe.ingredients[index];
                  return Text(
                    '${ingredient.quantity * _sliderVal} ${ingredient.measure} ${ingredient.name}',
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  );
                },
              ),
            ),

            Expanded(
              child: Text(
                '${_sliderVal * widget.recipe.servings} servings',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const Divider(
              height: 4,
              color: Colors.black,
              endIndent: 14,
              indent: 14,
            ),

            // Display Steps
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.fromLTRB(0, 35, 0, 35),
                itemCount: widget.recipe.method.length,
                itemBuilder: (BuildContext context, int index) {
                  final step = widget.recipe.method[index];
                  return Text(
                    '${step.stepNumber}. ${step.step}',
                    style: const TextStyle(
                      fontSize: 15,
                      leadingDistribution: TextLeadingDistribution.even,
                    ),
                    textAlign: TextAlign.center,
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
