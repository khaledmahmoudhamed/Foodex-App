import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sizer/sizer.dart';
import '../../../../constant/screens.dart';
import 'default_map.dart';
import 'package:my_app/constant/screens.dart' as screens;

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  LatLng? locationPicked;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: TextButton(
              onPressed: () {
                //Navigator.pushNamedAndRemoveUntil(context, screens.editLocation, (route) => false);
              },
              child:  Text(
                'Set Location',
                style: TextStyle(
                  fontSize: 14.sp,

                ),
              )),
        ),
      ),
      body: SafeArea(
        child: DefaultMap(
          initialCameraPosition: initialCameraPosition,
          onTap: (location) {
            setState(() {
              locationPicked = location;
            });
          },
          markers: locationPicked != null
              ? {
                  Marker(
                      markerId: const MarkerId("Picked Location"),
                      position: locationPicked!)
                }
              : {},
          circle: locationPicked != null
              ? {
                  Circle(
                      circleId: const CircleId("Picked Location Distance "),
                      fillColor: Colors.blue.withOpacity(0.3),
                      center: locationPicked!,
                      radius: 30 * 1000,
                      strokeColor: Colors.red,
                      strokeWidth: 2)
                }
              : {},
        ),
      ),
    );
  }
}
