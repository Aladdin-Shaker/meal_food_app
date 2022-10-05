import 'package:flutter/material.dart';
import 'package:meal_food_app/data/services/menu_sevice.dart';
import 'package:meal_food_app/models/menu.dart';
import 'package:meal_food_app/models/menu_item.dart';

class MenuController extends ChangeNotifier {
  List<Menu> _menu = <Menu>[];
  List<Menu> get menu => _menu;

  List<MenuItemDetails> _menuItems = <MenuItemDetails>[];
  List<MenuItemDetails> get menuItems => _menuItems;

  Future<List<Menu>> getMenu() async {
    try {
      _menu = await MenuService().getMenu();
      return _menu;
    } catch (error) {
      return Future.error(error.toString());
    }
  }

  Future<List<MenuItemDetails>> getMenuItems() async {
    try {
      _menuItems = await MenuService().getMenuItems();
      return _menuItems;
    } catch (error) {
      return Future.error(error.toString());
    }
  }
}
