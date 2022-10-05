import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/data/controllers/menu_controller.dart';
import 'package:meal_food_app/models/menu_item.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';
import 'package:meal_food_app/widgets/loaders/menu_item_vertical_card_loading.dart';
import 'package:meal_food_app/widgets/menu_item_vertical_card_widget.dart';
import 'package:meal_food_app/widgets/search_input_widget.dart';
import 'package:provider/provider.dart';

class MenuItemScreen extends StatelessWidget {
  final String menuTitle;
  const MenuItemScreen({Key? key, required this.menuTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MenuController menuCtrl =
        Provider.of<MenuController>(context, listen: false);

    return Scaffold(
      appBar: appbarWidget(title: menuTitle),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(AppPadding.p20),
              child: searchInputwidget(),
            ),
            const SizedBox(height: AppSize.s4),
            FutureBuilder<List<MenuItemDetails>>(
              future: menuCtrl.getMenuItems(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    width: SizeManager.screenWidth,
                    // height: SizeManager.screenWidth / 5,
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        MenuItemDetails menuItem = snapshot.data![index];
                        return menuItemVerticalCardWidget(menuItem, context);
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text('${snapshot.error}'));
                }

                // By default, show a loading spinner.
                return menuItemVerticalCardLoading();
              },
            ),
          ],
        ),
      ),
    );
  }
}
