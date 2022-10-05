class Category {
  final String image;
  final String title;

  Category({required this.image, required this.title});

  Category.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        title = json['title'];

  Map<String, dynamic> toJson() => {
        'image': image,
        'title': title,
      };
}
