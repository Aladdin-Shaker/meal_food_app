import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/data/controllers/home_controller.dart';
import 'package:meal_food_app/models/restaurant.dart';
import 'package:meal_food_app/widgets/loaders/restaurant_vertical_card_loading.dart';
import 'package:meal_food_app/widgets/restaurant_vertical_card_widget.dart';
import 'package:provider/provider.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeCtrl =
        Provider.of<HomeController>(context, listen: false);

    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: AppSize.s30),
            Container(
              margin: const EdgeInsets.only(
                left: AppMarging.m20,
                right: AppMarging.m20,
              ),
              child: Text(
                "Find discounts, Offers special \n meals and more",
                style: getMeduimStyle(
                  color: ColorManager.primary,
                ),
              ),
            ),
            const SizedBox(height: AppSize.s30),
            Container(
              margin: const EdgeInsets.only(
                  left: AppMarging.m20, right: AppMarging.m20),
              width: SizeManager.screenWidth / 3,
              height: getProportionateScreenWidth(AppSize.s30),
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  StringsManager.checkOffers,
                  style: getLightStyle(
                    color: ColorManager.white,
                  ),
                ),
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
          ],
        ),
      ),
    );
  }
}
