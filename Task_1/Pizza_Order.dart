void main(List<String> arguments) {

 List<Pizza>order=[Pizza("small", 1, 1, 2),Pizza("mediem", 5, 6,7 ),Pizza("large", 10, 6, 5)];
  print("Your order: ");
  for(Pizza p in order)
  print(p.getDescription());
  
  PizzaOrder pizzaOrder=PizzaOrder(order);
  print("Total Cost= "+ pizzaOrder.calTotal().toString());

}


class Pizza {
  String? size;
  int chesse = 0;
  int pepperoni = 0;
  int mushrooms = 0;

  Pizza(this.size, this.chesse, this.pepperoni, this.mushrooms);

  double calcCost() {
    double total_cost = 0;
    if (size == "small")
      total_cost = (10 + 2 * (chesse + pepperoni + mushrooms)).toDouble();
    else if (size == "mediem")
      total_cost = (12 + 2 * (chesse + pepperoni + mushrooms)).toDouble();
    else
      total_cost = (14 + 2 * (chesse + pepperoni + mushrooms)).toDouble();
    return total_cost;
  }

  String getDescription() {
    double total_cost = calcCost();
    return "Size: " +
        size.toString() +
        " , " +
        chesse.toString() +
        " chesse , " +
        pepperoni.toString() +
        " pepperoni , " +
        mushrooms.toString() +
        " mushrooms toppings , Cost " +
        total_cost.toString();
  }
}

class PizzaOrder {
  List<Pizza>? allPizze;

  PizzaOrder(this.allPizze);

  double calTotal(){
    double total=0;
    for(int i=0;i<allPizze!.length;i++){
      total+=allPizze![i].calcCost();
    }
    return total;
  }
}
