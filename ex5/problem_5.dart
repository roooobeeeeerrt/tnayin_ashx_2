class Product {
  String name;
  String category;
  double price;

  Product(this.name, this.category, this.price);
}

Map<String, double> totalByCategory(List<Product> products) {
  Map<String, double> result = {};

  for (var product in products) {
    if (result.containsKey(product.category)) {
      result[product.category] = result[product.category]! + product.price;
    } else {
      result[product.category] = product.price;
    }
  }

  return result;
}

void main() {
  List<Product> products = [
    Product("Xndzor", "Mirg", 2.0),
    Product("Banan", "Mirg", 1.5),
    Product("Kat", "Katnamterq", 3.0),
    Product("Panir", "Katnamterq", 4.0),
  ];

  print(totalByCategory(products));
}