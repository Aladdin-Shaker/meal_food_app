import 'package:flutter/material.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/data/controllers/about_controller.dart';
import 'package:meal_food_app/models/about.dart';
import 'package:meal_food_app/widgets/about_card.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';

class AboutusScreen extends StatelessWidget {
  AboutusScreen({Key? key}) : super(key: key);

  final AboutController ctrl = AboutController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: StringsManager.about),
      body: FutureBuilder<List<About>>(
        future: ctrl.getAbout(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SizedBox(
              width: SizeManager.screenWidth,
              child: ListView.builder(
                itemCount: snapshot.data!.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  About item = snapshot.data![index];
                  return aboutCard(item);
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
