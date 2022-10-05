class Restaurant {
  final String image;
  final String title;
  final String specialization;
  final double rating;
  final int ratingCount;

  Restaurant({
    required this.specialization,
    required this.rating,
    required this.ratingCount,
    required this.image,
    required this.title,
  });

  Restaurant.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        title = json['title'],
        specialization = json['specialization'],
        rating = json['rating'],
        ratingCount = json['ratingCount'];

  Map<String, dynamic> toJson() => {
        'image': image,
        'title': title,
        'specialization': specialization,
        'rating': rating,
        'ratingCount': ratingCount,
      };
}
