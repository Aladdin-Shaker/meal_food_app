import 'package:meal_food_app/models/ingredients.dart';

class Food {
  final String image;
  final String title;
  final String specialization;
  final double rating;
  final int ratingCount;
  final List<Ingredients>? ingredients;

  Food({
    required this.specialization,
    required this.rating,
    required this.ratingCount,
    required this.image,
    required this.title,
    this.ingredients,
  });

  Food.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        title = json['title'],
        specialization = json['specialization'],
        rating = json['rating'],
        ingredients = json['ingredients'],
        ratingCount = json['ratingCount'];

  Map<String, dynamic> toJson() => {
        'image': image,
        'title': title,
        'specialization': specialization,
        'rating': rating,
        'ingredients': ingredients,
        'ratingCount': ratingCount,
      };
}
