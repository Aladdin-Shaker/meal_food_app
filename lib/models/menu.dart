class Menu {
  final String image;
  final String title;
  final int itemsCount;

  Menu({required this.itemsCount, required this.image, required this.title});

  Menu.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        title = json['title'],
        itemsCount = json['itemsCount'];

  Map<String, dynamic> toJson() => {
        'image': image,
        'title': title,
        'itemsCount': itemsCount,
      };
}
