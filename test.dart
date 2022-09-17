// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Ingredient {
  // @protected
  List<String> allergens;
  // @protected
  String name;

  Ingredient({
    required this.allergens,
    required this.name,
  });

  List<String> getAllergens() {
    return allergens;
  }

  String getName() {
    return name;
  }
}

class BigMacBun extends Ingredient {
  BigMacBun() : super(allergens: ['Wheat'], name: 'Big Mac Bun');
}

class RegularBun extends Ingredient {
  RegularBun() : super(allergens: ['Wheat'], name: 'Regular Bun');
}

class Cheese extends Ingredient {
  Cheese() : super(allergens: ['Milk', 'Soy'], name: 'Cheese');
}

class GrillSeasoning extends Ingredient {
  GrillSeasoning() : super(allergens: [], name: 'Grill Seasoning');
}

class BeefPatty extends Ingredient {
  BeefPatty() : super(allergens: [], name: 'Beef Patty');
}

class McChickenPatty extends Ingredient {
  McChickenPatty()
      : super(allergens: [
          'Wheat',
          'Cooked in the same fryer that we use for Buttermilk Crispy Chicken which contains a milk allergen'
        ], name: 'McChicken Patty');
}

class BigMacSauce extends Ingredient {
  BigMacSauce()
      : super(allergens: ['Egg', 'Soy', 'Wheat'], name: 'Big Mac Sauce');
}

class Ketchup extends Ingredient {
  Ketchup() : super(allergens: [], name: 'Ketchup');
}

class Mayonnaise extends Ingredient {
  Mayonnaise() : super(allergens: ['Egg'], name: 'Mayonnaise');
}

class Mustard extends Ingredient {
  Mustard() : super(allergens: [], name: 'Mustard');
}

class Onions extends Ingredient {
  Onions() : super(allergens: ['Onions'], name: 'Onions');
}

class PickleSlices extends Ingredient {
  PickleSlices() : super(allergens: [], name: 'Pickle Slices');
}

class ShreddedLettuce extends Ingredient {
  ShreddedLettuce() : super(allergens: [], name: 'Shredded Lettuce');
}

class Burger {
  final List<Ingredient> _ingredients = [];
  double _price = 0.0;

  void addIngredient(Ingredient ingredient) {
    _ingredients.add((ingredient));
  }

  String getFormattedIngredients() {
    return _ingredients.map((e) => e.getName()).join(', ');
  }

  String getFormattedAllergens() {
    var allergens = Set<String>();

    _ingredients.forEach((x) => allergens.addAll(x.getAllergens()));

    return allergens.join(', ');
  }

  String getFormattedPrice() {
    return '\$${_price.toStringAsFixed(2)}';
  }

  void setPrice(double price) {
    _price = price;
  }
}

abstract class BurgerBuilderBase {
  // @protected
  late Burger burger;
  // @protected
  double price;

  BurgerBuilderBase({
    required this.price,
  });

  void createBurger() {
    burger = Burger();
  }

  Burger getBurger() {
    return burger;
  }

  void setBurgerPrice() {
    burger.setPrice(price);
  }

  void addBuns();
  void addCheese();
  void addPatties();
  void addSauces();
  void addSeasoning();
  void addVegetables();
}

//! Concrete builders
class BigMacBuilder extends BurgerBuilderBase {
  BigMacBuilder() : super(price: 3.99);

  @override
  void addBuns() {
    burger.addIngredient(BigMacBun());
  }

  @override
  void addCheese() {
    burger.addIngredient(Cheese());
  }

  @override
  void addPatties() {
    burger.addIngredient(BeefPatty());
  }

  @override
  void addSauces() {
    burger.addIngredient(BigMacSauce());
  }

  @override
  void addSeasoning() {
    burger.addIngredient(GrillSeasoning());
  }

  @override
  void addVegetables() {
    burger.addIngredient(Onions());
    burger.addIngredient(PickleSlices());
    burger.addIngredient(ShreddedLettuce());
  }
}

class CheeseburgerBuilder extends BurgerBuilderBase {
  CheeseburgerBuilder() : super(price: 1.09);

  @override
  void addBuns() {
    burger.addIngredient(RegularBun());
  }

  @override
  void addCheese() {
    burger.addIngredient(Cheese());
  }

  @override
  void addPatties() {
    burger.addIngredient(BeefPatty());
  }

  @override
  void addSauces() {
    burger.addIngredient(Ketchup());
    burger.addIngredient(Mustard());
  }

  @override
  void addSeasoning() {
    burger.addIngredient(GrillSeasoning());
  }

  @override
  void addVegetables() {
    burger.addIngredient(Onions());
    burger.addIngredient(PickleSlices());
  }
}

class HamburgerBuilder extends BurgerBuilderBase {
  HamburgerBuilder() : super(price: 1.0);

  @override
  void addBuns() {
    burger.addIngredient(RegularBun());
  }

  @override
  void addCheese() {
    // no need
  }

  @override
  void addPatties() {
    burger.addIngredient(BeefPatty());
  }

  @override
  void addSauces() {
    burger.addIngredient(Ketchup());
    burger.addIngredient(Mustard());
  }

  @override
  void addSeasoning() {
    burger.addIngredient(GrillSeasoning());
  }

  @override
  void addVegetables() {
    burger.addIngredient(Onions());
    burger.addIngredient(PickleSlices());
  }
}

class McChickenBuilder extends BurgerBuilderBase {
  McChickenBuilder() : super(price: 1.29);

  @override
  void addBuns() {
    burger.addIngredient(RegularBun());
  }

  @override
  void addCheese() {
    // no need
  }

  @override
  void addPatties() {
    burger.addIngredient(McChickenPatty());
  }

  @override
  void addSauces() {
    burger.addIngredient(Mayonnaise());
  }

  @override
  void addSeasoning() {
    // no need
  }

  @override
  void addVegetables() {
    burger.addIngredient(ShreddedLettuce());
  }
}

class BurgerMaker {
  BurgerBuilderBase burgerBuilder;
  BurgerMaker({
    required this.burgerBuilder,
  });

  void changeBurgerBuilder(BurgerBuilderBase burgerBuilder) {
    this.burgerBuilder = burgerBuilder;
  }

  Burger getBurger() {
    return burgerBuilder.getBurger();
  }

  void prepareBurger() {
    burgerBuilder.createBurger();
    burgerBuilder.setBurgerPrice();

    burgerBuilder.addBuns();
    burgerBuilder.addCheese();
    burgerBuilder.addPatties();
    burgerBuilder.addSauces();
    burgerBuilder.addSeasoning();
    burgerBuilder.addVegetables();
  }
}

void main() {
  final BurgerMaker burgerMaker =
      BurgerMaker(burgerBuilder: HamburgerBuilder());
  burgerMaker.prepareBurger();
  final test = burgerMaker.getBurger();
  print(test.getFormattedPrice());
}
