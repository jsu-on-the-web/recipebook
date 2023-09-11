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
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
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
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
      ),
    );
  }
}
