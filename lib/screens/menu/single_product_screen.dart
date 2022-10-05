import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/font_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/config/styles_manager.dart';
import 'package:meal_food_app/config/values_manager.dart';
import 'package:meal_food_app/models/menu_item.dart';
import 'package:meal_food_app/widgets/add_product_to_cart_widget.dart';
import 'package:meal_food_app/widgets/custom_image_widget.dart';
import 'package:meal_food_app/widgets/dropdown_list_widget.dart';
import 'package:meal_food_app/widgets/review_stars_widget.dart';

class SingleProductScreen extends StatelessWidget {
  final MenuItemDetails menuItem;
  SingleProductScreen({Key? key, required this.menuItem}) : super(key: key);

  final List<String> itemsArray = [
    'Current Location 1',
    'Current Location 2',
    'Current Location 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: true,
            expandedHeight: SizeManager.screenHeight / 2.7,
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarBrightness: Brightness.dark,
            ),
            excludeHeaderSemantics: true,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_sharp,
                  color: ColorManager.white,
                  size: FontSizes.s30,
                ),
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: customImageWidget(menuItem.image),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [_buildBody()],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: AppSize.s30),
          Text(
            menuItem.title,
            style: getMeduimStyle(
              fontSize: FontSizes.xLarge,
              color: ColorManager.primary,
            ),
          ),
          const SizedBox(height: AppSize.s6),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                reviewStars(menuItem.rate),
                Text(
                  'Rs.${menuItem.price.toString()}',
                  textAlign: TextAlign.start,
                  style: getExtraBoldStyle(
                    color: ColorManager.primary,
                  ),
                ),
              ]),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              '/ per Portion',
              textAlign: TextAlign.start,
              style: getNormalStyle(
                color: ColorManager.primary,
              ),
            ),
          ),
          const SizedBox(height: AppSize.s6),
          Text(
            'Desciption',
            style: getSemiBoldStyle(
                color: ColorManager.primary, fontSize: FontSizes.medium),
          ),
          const SizedBox(height: AppSize.s6),
          Text(
            menuItem.description,
            style: getNormalStyle(
              color: ColorManager.primary,
            ),
          ),
          const SizedBox(height: AppSize.s6),
          const Divider(),
          const SizedBox(height: AppSize.s6),
          Text(
            'Customize your Order',
            style: getSemiBoldStyle(
                color: ColorManager.primary, fontSize: FontSizes.medium),
          ),
          const SizedBox(height: AppSize.s20),
          dropdownListWidget(itemsArray, () {}),
          const SizedBox(height: AppSize.s20),
          dropdownListWidget(itemsArray, () {}),
          const SizedBox(height: AppSize.s18),
          addProductToCartWidget(),
          const SizedBox(height: AppSize.s18),
          _buildAddTocartCard(),
          const SizedBox(height: AppSize.s28)
        ],
      ),
    );
  }

  SizedBox _buildAddTocartCard() {
    return SizedBox(
      height: SizeManager.screenWidth / 2,
      width: SizeManager.screenWidth,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            child: Container(
              height: SizeManager.screenHeight / 5,
              width: SizeManager.screenWidth / 4,
              // margin: const EdgeInsets.only(top: 100, bottom: 100),
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
            left: SizeManager.screenWidth / 4 - 50,
            child: Container(
              height: getProportionateScreenHeight(120),
              width: SizeManager.screenWidth / 1.4,
              decoration: const BoxDecoration(
                color: ColorManager.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.placehoder,
                    blurRadius: 20,
                    offset: Offset(4, 4),
                    blurStyle: BlurStyle.normal,
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSize.s50),
                  bottomLeft: Radius.circular(AppSize.s50),
                  topRight: Radius.circular(AppSize.s14),
                  bottomRight: Radius.circular(AppSize.s14),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Total Price',
                    style: getMeduimStyle(
                      color: ColorManager.primary,
                      fontSize: FontSizes.medium,
                    ),
                  ),
                  const SizedBox(height: AppSize.s10),
                  Text(
                    'LKR 1500',
                    style: getBoldStyle(
                      color: ColorManager.primary,
                      // fontSize: FontSizes.,
                    ),
                  ),
                  const SizedBox(height: AppSize.s10),
                  SizedBox(
                    width: SizeManager.screenWidth / 2,
                    height: getProportionateScreenHeight(30),
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_shopping_cart_sharp,
                        size: AppSize.s18,
                      ),
                      label: Text(
                        StringsManager.addTocart,
                        style: getSemiBoldStyle(
                          color: ColorManager.white,
                          // fontSize: FontSizes.,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: SizeManager.screenWidth - 90,
            child: Container(
              width: AppSize.s50,
              height: AppSize.s50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: ColorManager.white,
                boxShadow: [
                  BoxShadow(
                    color: ColorManager.placehoder,
                    blurRadius: 5,
                    blurStyle: BlurStyle.outer,
                    offset: Offset(2, 1),
                  ),
                ],
              ),
              child: InkWell(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) =>
                  //         MenuItemScreen(menuTitle: menu.title),
                  //   ),
                  // );
                },
                child: const Icon(
                  Icons.shopping_cart_sharp,
                  color: ColorManager.main,
                  size: FontSizes.s28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
