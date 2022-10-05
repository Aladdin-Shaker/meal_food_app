import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/routes_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/data/controllers/home_controller.dart';
import 'package:meal_food_app/models/category.dart';
import 'package:meal_food_app/models/food.dart';
import 'package:meal_food_app/models/restaurant.dart';
import 'package:meal_food_app/widgets/category_loading.dart';
import 'package:meal_food_app/widgets/category_widget.dart';
import 'package:meal_food_app/widgets/food_vertical_card_loading.dart';
import 'package:meal_food_app/widgets/food_vertical_card_widget.dart';
import 'package:meal_food_app/widgets/loaders/food_horizontal_card_loading.dart';
import 'package:meal_food_app/widgets/food_horizontal_card_widget.dart';
import 'package:meal_food_app/widgets/loaders/restaurant_vertical_card_loading.dart';
import 'package:meal_food_app/widgets/restaurant_vertical_card_widget.dart';
import 'package:meal_food_app/widgets/search_input_widget.dart';
import 'package:meal_food_app/widgets/section_header.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeCtrl =
        Provider.of<HomeController>(context, listen: false);

    String dropdownValue = homeCtrl.dropdownItems.first;
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppPadding.p20),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Delivering to',
                      style: getNormalStyle(
                        color: ColorManager.placehoder,
                        fontSize: AppSize.s12,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: SizedBox(
                      width: SizeManager.screenWidth / 2.3,
                      child: DropdownButton(
                        elevation: 0,
                        // itemHeight: 16,
                        underline: const SizedBox(height: 0, width: 0),
                        value: dropdownValue,
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: ColorManager.main,
                        ),
                        alignment: Alignment.topLeft,
                        isExpanded: true,
                        items: homeCtrl.dropdownItems
                            .map<DropdownMenuItem<String>>((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          // This is called when the user selects an item.
                          // dropdownValue = value!;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSize.s20),
                  searchInputwidget(),
                  const SizedBox(height: AppSize.s20),
                  FutureBuilder<List<Category>>(
                    future: homeCtrl.getCategories(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return SizedBox(
                          height: SizeManager.screenWidth / 3,
                          child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              Category category = snapshot.data![index];
                              return categoryWidget(category);
                            },
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Center(child: Text('${snapshot.error}'));
                      }

                      // By default, show a loading spinner.
                      return categoryLoading();
                    },
                  ),
                  const SizedBox(height: AppSize.s60),
                  sectionHeader(
                    StringsManager.popularResturants,
                    Routes.resturentsRoute,
                    context,
                  ),
                ],
              ),
            ),
            const SizedBox(height: AppSize.s30),
            FutureBuilder<List<Restaurant>>(
              future: homeCtrl.getPopularResturents(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      Restaurant restaurant = snapshot.data![index];
                      return restaurantVerticalCardWidget(restaurant);
                    },
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('${snapshot.error}'));
                }

                // By default, show a loading spinner.
                return restaurantVerticalCardLoading();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(AppPadding.p20),
              child: Column(
                children: [
                  sectionHeader(
                    StringsManager.mostPopular,
                    Routes.resturentsRoute,
                    context,
                  ),
                  const SizedBox(height: AppSize.s30),
                  FutureBuilder<List<Food>>(
                    future: homeCtrl.getMostPopularFoods(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return SizedBox(
                          height: SizeManager.screenWidth / 2,
                          child: ListView.builder(
                            itemCount: snapshot.data!.length,
                            scrollDirection: Axis.horizontal,
                            // shrinkWrap: true,
                            // physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              Food food = snapshot.data![index];
                              return foodHorizontalCardWidget(food);
                            },
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Center(child: Text('${snapshot.error}'));
                      }

                      // By default, show a loading spinner.
                      return foodHorizontalCardLoading();
                    },
                  ),
                  const SizedBox(height: AppSize.s30),
                  sectionHeader(
                    StringsManager.recentItems,
                    Routes.resturentsRoute,
                    context,
                  ),
                  const SizedBox(height: AppSize.s30),
                  FutureBuilder<List<Food>>(
                    future: homeCtrl.getRecentItems(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return ListView.builder(
                          itemCount: snapshot.data!.length,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          // shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            Food food = snapshot.data![index];
                            return foodVerticalCardWidget(food);
                          },
                        );
                      } else if (snapshot.hasError) {
                        return Center(child: Text('${snapshot.error}'));
                      }

                      // By default, show a loading spinner.
                      return foodVerticalCardLoading();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
