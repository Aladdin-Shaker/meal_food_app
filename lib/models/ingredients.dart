class Ingredients {
  final String title;
  final double price;

  Ingredients({
    required this.price,
    required this.title,
  });

  Ingredients.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        price = json['price'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'price': price,
      };
}
