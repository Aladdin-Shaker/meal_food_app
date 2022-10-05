import 'package:meal_food_app/models/menu.dart';
import 'package:meal_food_app/models/menu_item.dart';

class MenuService {
  Future<List<Menu>> getMenu() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final List<Menu> menu = [
        Menu(
          image:
              "https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg",
          title: "Food",
          itemsCount: 25,
        ),
        Menu(
          image:
              "https://i2.cnnturk.com/i/cnnturk/75/800x666/6316505e17aca90e28ed65b0.jpg",
          title: "Beverages",
          itemsCount: 15,
        ),
        Menu(
          image:
              "https://www.brit.co/media-library/these-nutella-brownies-top-our-list-of-quick-and-easy-dessert-recipes.jpg?id=23305200&width=980",
          title: "Desserts",
          itemsCount: 41,
        ),
        Menu(
          image:
              "https://upload.wikimedia.org/wikipedia/commons/thumb/4/47/Hamburger_%28black_bg%29.jpg/1200px-Hamburger_%28black_bg%29.jpg",
          title: "Promotions",
          itemsCount: 33,
        ),
      ];
      return menu;
    });
  }

  Future<List<MenuItemDetails>> getMenuItems() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final List<MenuItemDetails> menuItems = [
        MenuItemDetails(
          image:
              "https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg",
          title: "French Apple Pie",
          subTitle: "Cakes by Tella Desserts",
          rate: 4,
          price: 5,
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
        ),
        MenuItemDetails(
          image:
              "https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg",
          title: "French Apple Pie",
          subTitle: "Cakes by Tella Desserts",
          rate: 3,
          price: 5,
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
        ),
        MenuItemDetails(
          image:
              "https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg",
          title: "French Apple Pie",
          subTitle: "Cakes by Tella Desserts",
          rate: 2,
          price: 5,
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
        ),
        MenuItemDetails(
          image:
              "https://www.eatthis.com/wp-content/uploads/sites/4/2019/06/deep-dish-pizza-chicago.jpg",
          title: "French Apple Pie",
          subTitle: "Cakes by Tella Desserts",
          rate: 1,
          price: 5,
          description:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada",
        ),
      ];
      return menuItems;
    });
  }
}
