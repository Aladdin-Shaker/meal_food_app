class OnBoarding {
  final String image;
  final String title;
  final String description;

  OnBoarding(
      {required this.image, required this.title, required this.description});

  OnBoarding.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        title = json['title'],
        description = json['description'];

  Map<String, dynamic> toJson() => {
        'image': image,
        'title': title,
        'description': description,
      };
}
