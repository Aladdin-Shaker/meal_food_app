import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:meal_food_app/config/color_manager.dart';
import 'package:meal_food_app/config/size_manager.dart';
import 'package:meal_food_app/config/strings_manager.dart';
import 'package:meal_food_app/data/controllers/map_controller.dart';
import 'package:meal_food_app/widgets/appbar_widget.dart';
import 'package:provider/provider.dart';

class ChangeAddressScreen extends StatelessWidget {
  const ChangeAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(title: StringsManager.changeAddress),
      // body: changeAddressWidget(context),
      body: ChangeNotifierProvider<MapController>(
        create: (context) => MapController(),
        child: Consumer<MapController>(
          builder: (context, value, child) => Stack(
            children: [
              Positioned(
                top: 0,
                right: 0,
                left: 0,
                child: SizedBox(
                  height: SizeManager.screenHeight,
                  child: GoogleMap(
                    markers: value.markers,
                    trafficEnabled: value.isTrafficEnebled,
                    myLocationButtonEnabled: true,
                    zoomControlsEnabled: true,
                    zoomGesturesEnabled: true,
                    myLocationEnabled: true,
                    mapType: value.defaultMapType,
                    initialCameraPosition: value.kGooglePlex,
                    onMapCreated: value.onMapCreated,
                    buildingsEnabled: true,
                    compassEnabled: true,
                    indoorViewEnabled: true,
                    onTap: (LatLng argument) {
                      value.goToSelectedLocation(
                          argument.latitude, argument.longitude);
                    },
                  ),
                ),
              ),
              Positioned(
                top: 70,
                right: 10,
                child: Column(
                  children: <Widget>[
                    FloatingActionButton(
                      elevation: 5,
                      backgroundColor: ColorManager.secondary,
                      onPressed: () {
                        value.changeMapType();
                      },
                      child: const Icon(Icons.layers),
                    ),
                    const SizedBox(height: 10),
                    FloatingActionButton(
                      elevation: 5,
                      backgroundColor: ColorManager.main,
                      onPressed: () {
                        value.toggleTrafficShow();
                      },
                      child: const Icon(Icons.traffic_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
