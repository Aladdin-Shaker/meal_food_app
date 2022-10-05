class MenuItemDetails {
  final String image;
  final String title;
  final String subTitle;
  final int rate;
  final double price;
  final String description;

  MenuItemDetails({
    required this.title,
    required this.subTitle,
    required this.image,
    required this.rate,
    required this.price,
    required this.description,
  });

  MenuItemDetails.fromJson(Map<String, dynamic> json)
      : image = json['image'],
        title = json['title'],
        subTitle = json['subTitle'],
        price = json['price'],
        description = json['description'],
        rate = json['rate'];

  Map<String, dynamic> toJson() => {
        'image': image,
        'title': title,
        'subTitle': subTitle,
        'rate': rate,
        'price': price,
        'description': description,
      };
}
