import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DefaultMap extends StatelessWidget {
  final CameraPosition initialCameraPosition;
  final void Function(LatLng)? onTap;
  final Set<Marker> markers;
  final void Function(GoogleMapController)? onMapCreated;
  final bool mapToolBarEnabled;
  final bool myLocationEnabled;
  final bool myLocationButtonEnabled;
  final bool zoomControlsEnabled;
  final bool zoomGesturesEnabled;
  final MapType mapType;
  final EdgeInsets padding;
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizer;
  final Set<Circle> circle;

  const DefaultMap(
      {Key? key,
      required this.initialCameraPosition,
      this.onTap,
      this.markers = const {},
      this.onMapCreated,
      this.myLocationEnabled = true,
      this.myLocationButtonEnabled = true,
      this.zoomControlsEnabled = true,
      this.zoomGesturesEnabled = true,
      this.mapType = MapType.normal,
      this.padding = const EdgeInsets.all(0),
      this.gestureRecognizer = const {},
      this.circle = const {}, this.mapToolBarEnabled=true
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
        initialCameraPosition: initialCameraPosition,
        padding: padding,
        compassEnabled: true,
      zoomControlsEnabled: zoomControlsEnabled,
      zoomGesturesEnabled: zoomGesturesEnabled,
      onTap: onTap,
      markers: markers,
      onMapCreated: onMapCreated,
      myLocationEnabled: myLocationEnabled,
      myLocationButtonEnabled: myLocationButtonEnabled,
      mapType: mapType,
      gestureRecognizers: gestureRecognizer,
      circles: circle,
      mapToolbarEnabled:mapToolBarEnabled ,

    );
  }
}
