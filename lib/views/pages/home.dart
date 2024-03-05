import 'package:flutter/material.dart';
import 'package:recipe_application/views/widgets/recipe_card.dart';
import 'package:recipe_application/views/pages/recipe_detail_page.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _openRecipeDetailPage(
    BuildContext context,
    String title,
    String thumbnailUrl,
    String description,
    String ingredients,
    String instructions,
  ) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RecipeDetailPage(
          title: title,
          thumbnailAsset: thumbnailUrl,
          description: description,
          ingredients: ingredients,
          instructions: instructions,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu),
            SizedBox(width: 10),
            Text(
              'Food Recipes',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 50,
              child: Center(
                child: Text(
                  'Salads',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            RecipeCard(
              title: 'Pseudo-Caesar',
              rating: '4.9',
              cookTime: '15 min',
              thumbnailAsset: 'assets/recipeses/111.jpeg',
              onPressed: () => _openRecipeDetailPage(
                  context,
                  'Pseudo-Caesar',
                  'assets/recipeses/111.jpeg',
                  'Gourmets can roll their eyes all they want, but when speed comes to the fore, there is simply no time to stir homemade Caesar dressing. That iss why mayonnaise comes to the rescue.',
                  '1 head of iceberg lettuce;\n2 chicken breast fillets;\n3 tablespoons oil;\n3 slices of loaf;\n1 clove of garlic;\n50 g cheese;\n2 tablespoons of mayonnaise.',
                  'Fry small pieces of fillet in 1.5 tablespoons of oil until cooked. On a nearby burner, heat the oil in a frying pan, grate the garlic there, and brown the diced loaf. If you have time, first cut the crust off the bread. Tear the iceberg into a bowl with your hands, place chicken, croutons on top, grate cheese, season with mayonnaise. If you do not serve the salad right away, place the mayonnaise between the iceberg and the chicken, so it will not soak the crackers and they will remain crispy. Add a few halved cherry tomatoes for a juicier version of the salad.'),
            ),
            RecipeCard(
              title: 'Tuna salad',
              rating: '4.0',
              cookTime: '10-12 min',
              thumbnailAsset: 'assets/recipeses/222.jpeg',
              onPressed: () => _openRecipeDetailPage(
                context,
                'Tuna salad',
                'assets/recipeses/222.jpeg',
                'The salad is a record holder for the speed of preparation; the process will take a few minutes.',
                '1 can of canned tuna in its own juice;\n1 can of canned beans;\n2 large pickled cucumbers;\n1 large fresh cucumber;\n½ onion;\n1 tablespoon vinegar;\n2 tablespoons of vegetable oil.',
                'Start with the onion. Cut it into half rings, scald with boiling water and pour vinegar diluted according to the instructions (usually indicated on the package). Set aside and let it marinate. Meanwhile, chop the cucumbers, drain the beans, remove the tuna from the can and break it into pieces with a fork. Mix the ingredients. Remove the onions from the vinegar and add to the salad. Drizzle oil over the mixture and season generously with pepper. But you should be careful when salting: cucumbers and tuna have already made their contribution.',
              ),
            ),
            RecipeCard(
              title: 'Salad with smoked sausage',
              rating: '4.5',
              cookTime: '15 min',
              thumbnailAsset: 'assets/recipeses/333.jpeg',
              onPressed: () => _openRecipeDetailPage(
                  context,
                  'Salad with smoked sausage',
                  'assets/recipeses/333.jpeg',
                  'This salad is completely simple, but quick and tasty.',
                  '200 g smoked sausage;\n½ small head of cabbage;\n2 large tomatoes;\n1 can of canned green peas;\n4 tablespoons of mayonnaise.',
                  'Cut the sausage and tomatoes into strips, shred the cabbage, add peas and season with mayonnaise. Do not forget to add pepper, it tastes better.'),
            ),
            Container(
              height: 50,
              child: Center(
                child: Text(
                  'Soups',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            RecipeCard(
              title: 'Soup with smoked meats and lentils',
              rating: '4.8',
              cookTime: '20 min',
              thumbnailAsset: 'assets/recipeses/444.jpeg',
              onPressed: () => _openRecipeDetailPage(
                context,
                'Soup with smoked meats and lentils',
                'assets/recipeses/444.jpeg',
                'It is important to choose the right lentils here. Look for the one for soups. The cooking instructions on the package advise to cook it for about 20 minutes.',
                '200 g smoked meats (chicken, brisket, ribs);\n200 g lentils;\n½ carrot;\n½ onion;\n1 tablespoon oil.',
                'Place lentils and chopped smoked meats in a saucepan (if using ribs, separate the flesh from the bone), cover with water, and place on the fire. Chop the onion and fry it in a frying pan. After it browns, add grated carrots and continue frying. When the lentils are ready, add the contents of the pan to the pan and boil for a couple more minutes.',
              ),
            ),
            RecipeCard(
              title: 'Cream of mushroom soup',
              rating: '4.7',
              cookTime: '20 min',
              thumbnailAsset: 'assets/recipeses/555.jpeg',
              onPressed: () => _openRecipeDetailPage(
                  context,
                  'Cream of mushroom soup',
                  'assets/recipeses/555.jpeg',
                  'This puree soup will also be very low-calorie, suitable for any healthy lifestyle get-together.',
                  '300 g champignons;\n1 medium zucchini.',
                  'Chop the mushrooms and peeled zucchini and boil until they are soft. Then transfer the contents of the pan a little at a time into the blender bowl and puree. Adjust the thickness with the broth in which the mushrooms and zucchini were cooked.'),
            ),
            RecipeCard(
              title: 'Cheese soup with red fish',
              rating: '4.0',
              cookTime: '15 min',
              thumbnailAsset: 'assets/recipeses/666.jpeg',
              onPressed: () => _openRecipeDetailPage(
                context,
                'Cheese soup with red fish',
                'assets/recipeses/666.jpeg',
                'Not the most budget-friendly, but still a quick soup option.',
                '200 g red fish;\n3 potatoes;\n4 sprigs of dill;\n3 processed cheeses.',
                'Cut the potatoes into medium cubes and boil until half cooked. Add chopped processed cheese to the vegetable broth and wait until it dissolves. Place red fish cut into medium pieces. Bring until cooked, turn off the heat and let the soup sit for 5 minutes. When serving, sprinkle with dill, the combination of red and green will look beautiful on the plate.',
              ),
            ),
            Container(
              height: 50,
              child: Center(
                child: Text(
                  'Second courses',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            RecipeCard(
              title: 'Chicken fillet with pineapple and broccoli',
              rating: '4.5',
              cookTime: '15 min',
              thumbnailAsset: 'assets/recipeses/777.jpeg',
              onPressed: () => _openRecipeDetailPage(
                context,
                'Chicken fillet with pineapple and broccoli',
                'assets/recipeses/777.jpeg',
                'The dish does not require a side dish, but if you really want it, boil the rice.',
                '2 chicken breast fillets;\n3 canned pineapple rings;\n400 g broccoli;\n2 tablespoons olive oil.',
                'Fry small pieces of chicken in a greased frying pan until golden brown, add diced pineapples and broccoli florets. Without forgetting to stir, bring the dish to readiness.',
              ),
            ),
            RecipeCard(
              title: 'Duck with funchose',
              rating: '4.9',
              cookTime: '10 min',
              thumbnailAsset: 'assets/recipeses/888.jpeg',
              onPressed: () => _openRecipeDetailPage(
                context,
                'Duck with funchose',
                'assets/recipeses/888.jpeg',
                'If you don\'t hesitate, you can prepare this dish in a matter of minutes.',
                '200 g duck fillet;\n200 g funchose;\n2 tablespoons soy sauce;\n½ bell pepper;\n1 pickled cucumber;\n1 tablespoon of vegetable oil.',
                'Fry the fillet pieces in oil, then add soy sauce (if too salty, dilute), chopped pepper and cucumber. Keep on the fire until the duck is done. At the same time, prepare the funchose as written on the package; usually just pour boiling water over it for a few minutes. Combine the noodles and meat, and you have a dish with an Asian twist.',
              ),
            ),
            RecipeCard(
              title: 'Pork in pomegranate sauce',
              rating: '4.7',
              cookTime: '15 min',
              thumbnailAsset: 'assets/recipeses/8888.jpeg',
              onPressed: () => _openRecipeDetailPage(
                context,
                'Pork in pomegranate sauce',
                'assets/recipeses/8888.jpeg',
                'You can choose anything as a side dish for this dish. If you want something really quick, try water-based oatmeal. If you have time, cook bulgur or rice, they go well with the sweetness of the pomegranate sauce.',
                '300 g pork\n½ onion;\n2 tablespoons pomegranate sauce;\n1 tablespoon sunflower oil.',
                'Finely chop the pork so it cooks faster. Fry it in oil along with the onion until half cooked. Add the pomegranate sauce and a little water to the pan to simmer the meat. If the pomegranate sauce is not sour, squeeze a little lemon juice into the pork; your goal is for the dish to be not just sweet, but sweet and sour. And don\'t forget to add salt.',
              ),
            ),
            Container(
              height: 50,
              child: Center(
                child: Text(
                  'Dessert',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            RecipeCard(
              title: 'Roll with jam',
              rating: '4.9',
              cookTime: '20 min',
              thumbnailAsset: 'assets/recipeses/999.jpeg',
              onPressed: () => _openRecipeDetailPage(
                context,
                'Roll with jam',
                'assets/recipeses/999.jpeg',
                'Based on the description of the recipe, it doesn’t seem like preparing the roll is really quick and easy, but it is.',
                '3 eggs;\n3 tablespoons flour (90 grams);\n3 tablespoons of sugar (90 grams);\n150 g jam.',
                'Mix eggs, flour and sugar in a bowl without fuss, but do not beat. Pour the mixture onto a parchment-lined baking sheet and smooth it out with a spoon. Bake at 200°C for about 15 minutes. From about the eighth minute, check the readiness; the roll should be baked, but retain its elasticity. When the dough is ready, place the sponge cake directly with the paper on a towel and roll it into a roll. Then carefully remove the paper and let the dough cool. After this, unwrap the biscuit, brush it with jam and wrap it back.',
              ),
            ),
            RecipeCard(
              title: 'Puff pastries with berries',
              rating: '4.8',
              cookTime: '20 min',
              thumbnailAsset: 'assets/recipeses/1010.jpeg',
              onPressed: () => _openRecipeDetailPage(
                context,
                'Puff pastries with berries',
                'assets/recipeses/1010.jpeg',
                'Preparing puff pastry is a long and labor-intensive process. Fortunately, you can buy it in the store, and it makes life much easier.',
                '300 g puff pastry;\n1 tablespoon sugar;\n1 tablespoon starch;\n1 glass of berries.',
                'Lightly roll out the dough and cut into squares. Place the berries in a saucepan, add sugar and starch, and heat. Stir gently to keep the berries intact. When the sugar has dissolved, remove from heat. Form small sides around the dough square and place a spoonful of filling in the center. Repeat the manipulations until you run out of dough or filling. Place the puff pastries on a baking sheet lined with parchment and place in an oven preheated to 200°C for about 15 minutes.',
              ),
            ),
            RecipeCard(
              title: 'Pear crumble',
              rating: '4.9',
              cookTime: '20 min',
              thumbnailAsset: 'assets/recipeses/111111.jpeg',
              onPressed: () => _openRecipeDetailPage(
                context,
                'Pear crumble',
                'assets/recipeses/111111.jpeg',
                'A quick recipe for those who like it hot when it comes to desserts.',
                '2 pears;\n50 g butter;\n40 g flour;\n50 g sugar.',
                'Peel the pears, grate them on a coarse grater and place them in a heat-resistant bowl. Rub cold butter with flour and sugar to form crumbs. This can be done by hand, but a food processor with a blade attachment will speed up the process significantly. Place the crumbs on top of the fruit and bake the dish at 200°C until the dough is ready. Serve the crumble warm, you can add ice cream.',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
