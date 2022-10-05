import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/data/controllers/order_controller.dart';
import 'package:meal_food_app/models/food.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';
import 'package:meal_food_app/widgets/order_widget.dart';

class MyOrdersScreen extends StatelessWidget {
  MyOrdersScreen({Key? key}) : super(key: key);

  final OrderController ctrl = OrderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: StringsManager.myOrders),
      body: FutureBuilder<List<Food>>(
        future: ctrl.getOrders(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SizedBox(
              width: SizeManager.screenWidth,
              // height: SizeManager.screenHeight,
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  Food item = snapshot.data![index];
                  return orderWidget(item, context);
                },
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          }

          // By default, show a loading spinner.
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
