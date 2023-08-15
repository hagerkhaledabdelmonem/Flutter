# Task 1 :
## Description :

Create a class named Pizza that stores information about a single pizza. It should contain the following: 
- instance variables to store the size of the pizza  (either small,  medium, or large), the number of cheese toppings, the number of pepperoni toppings, and the number of Mushrooms toppings. 
- Constructor(s) that set all of the instance variables.
- Method named calcCost( ) returns double that is the cost of the pizza.
- Method named getDescription( ) that returns a String containing the pizza size, quantity of each topping.

Write test code to create several pizzas and output their descriptions. For example, a large pizza with one cheese, one pepperoni, and two mushroom toppings should cost a total of 22 $. 

  #### Pizza cost is determined by:
  
  - Small: $10 + $2 per topping
  - Medium: $12 + $2 per topping
  - Large: $14 + $2 per topping


Create a PizzaOrder class that allows you to save pizzas in an order. Each pizza saved should be a Pizza object. Create a method calcTotal() that returns the cost of the order.
