import 'package:flutter/material.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/data/controllers/menu_controller.dart';
import 'package:meal_food_app/models/menu.dart';
import 'package:meal_food_app/widgets/loaders/menu_vertical_card_loading.dart';
import 'package:meal_food_app/widgets/menu_vertical_card_widget.dart';
import 'package:meal_food_app/widgets/search_input_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MenuController menuCtrl = MenuController();

    SizeManager().init(context);

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppPadding.p20),
            child: searchInputwidget(),
          ),
          Positioned(
            child: Container(
              height: SizeManager.screenHeight,
              width: SizeManager.screenWidth / 4,
              margin: const EdgeInsets.only(top: 100, bottom: 100),
              decoration: const BoxDecoration(
                color: ColorManager.main,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(AppSize.s38),
                  bottomRight: Radius.circular(AppSize.s38),
                ),
              ),
            ),
          ),
          const SizedBox(height: AppSize.s30),
          Positioned(
            top: getProportionateScreenHeight(120),
            left: getProportionateScreenHeight(60),
            child: FutureBuilder<List<Menu>>(
              future: menuCtrl.getMenu(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    width: SizeManager.screenWidth / 1.3,
                    // height: SizeManager.screenWidth / 5,
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        Menu menu = snapshot.data![index];
                        return menuVerticalCardWidget(menu, index, context);
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('${snapshot.error}'));
                }

                // By default, show a loading spinner.
                return menuVerticalCardLoading();
              },
            ),
          ),
        ],
      ),
    );
  }
}
