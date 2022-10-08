import 'package:meal_food_app/config/assets_manager.dart';
import 'package:meal_food_app/models/category.dart';
import 'package:meal_food_app/models/food.dart';
import 'package:meal_food_app/models/restaurant.dart';

class HomeService {
  Future<List<Category>> getcategories() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final List<Category> categories = [
        Category(
            image:
                "https://www.honestfoodtalks.com/wp-content/uploads/2021/04/fast-food-chain-burger-1024x614.jpg",
            title: "offers"),
        Category(
            image:
                "https://www.honestfoodtalks.com/wp-content/uploads/2022/06/A-serving-of-chicken-in-black-sauce-720x540.jpg",
            title: "italian"),
        Category(
            image:
                "https://www.honestfoodtalks.com/wp-content/uploads/2022/05/a-plate-of-chow-mein-noodles.jpg",
            title: "indian"),
        Category(
          image:
              "https://www.honestfoodtalks.com/wp-content/uploads/2022/05/crispy-chilli-beef-with-egg-fried-rice-500x375.jpg",
          title: "Sri Lankan",
        ),
      ];
      return categories;
    });
  }

  Future<List<Restaurant>> getPopularRestaurants() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final List<Restaurant> restaurants = [
        Restaurant(
          specialization: "Café Western Food",
          rating: 4.5,
          ratingCount: 120,
          image:
              "https://media-cdn.tripadvisor.com/media/photo-s/05/d4/83/3f/fast-food-restaurant.jpg",
          title: "Minute by tuk tuk",
        ),
        Restaurant(
          specialization: "Café Western Food",
          rating: 4.5,
          ratingCount: 120,
          image:
              "https://img.traveltriangle.com/blog/wp-content/uploads/2019/08/Indian-Restaurants-In-Japan.jpg",
          title: "Minute by tuk tuk",
        ),
        Restaurant(
          specialization: "Café Western Food",
          rating: 4.5,
          ratingCount: 120,
          image:
              "https://assets1.cbsnewsstatic.com/hub/i/2015/07/01/0b059f60-344d-4ada-baae-e683aff3650a/istock000044051102large.jpg",
          title: "Minute by tuk tuk",
        ),
      ];
      return restaurants;
    });
  }

  Future<List<Food>> getMostPopularFoods() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final List<Food> foods = [
        Food(
          specialization: "Café Western Food",
          rating: 4.5,
          ratingCount: 120,
          image: ImagesAssets.food3,
          title: "Minute by tuk tuk",
        ),
        Food(
          specialization: "Café Western Food",
          rating: 4.5,
          ratingCount: 120,
          image: ImagesAssets.food1,
          title: "Minute by tuk tuk",
        ),
        Food(
          specialization: "Café Western Food",
          rating: 4.5,
          ratingCount: 120,
          image: ImagesAssets.food2,
          title: "Minute by tuk tuk",
        ),
      ];
      return foods;
    });
  }

  Future<List<Food>> getRecentItems() async {
    return Future.delayed(const Duration(seconds: 1), () {
      final List<Food> foods = [
        Food(
          specialization: "Café Western Food",
          rating: 4.5,
          ratingCount: 120,
          image: ImagesAssets.food3,
          title: "Minute by tuk tuk",
        ),
        Food(
          specialization: "Café Western Food",
          rating: 4.5,
          ratingCount: 120,
          image: ImagesAssets.food4,
          title: "Minute by tuk tuk",
        ),
        Food(
          specialization: "Café Western Food",
          rating: 4.5,
          ratingCount: 120,
          image: ImagesAssets.food5,
          title: "Minute by tuk tuk",
        ),
      ];
      return foods;
    });
  }
}
