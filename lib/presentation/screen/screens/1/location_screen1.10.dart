import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../view/default_button.dart';
import '../../../../view/default_outlined_button.dart';
import '../../../../view/default_text.dart';


class LocationScreen extends StatefulWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 70, left: 20, right: 20, bottom: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: const Color(0xFFF9A84D),
                radius: 20,
                child: IconButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, screens.editLocation, (route) => false);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Set Your Location ',
                style: TextStyle(
                    fontSize: 25.sp,
                    color: const Color(0xFF09051C),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: TextStyle(
                    fontSize: 12.sp,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 6.h,
              ),
              Container(
                padding: const EdgeInsets.all(10),
               // color: Colors.black38,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15),
                  ),
                  color: Colors.black12,
                ),
                height: 150,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Color(0xFFF9A84D),
                          radius: 20,
                          child: Icon(Icons.maps_ugc),
                        ),
                        SizedBox(
                          width: 3.w,
                        ),
                        Text(
                          'Your Location',
                          style: TextStyle(
                              fontSize: 15.sp, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 3.w,
                    ),
                    DefaultOutlinedButton(
                      radius: 15,
                        borderColor: Colors.white30,

                        onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, screens.mapLocation, (route) => false);
                        },
                        child: Text(
                          'Set Location',
                          style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                        ))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 28.h),
                child: Center(
                  child: DefaultMaterialButton(
                    height: 8.h,
                    width: 50.w,
                    backgroundColor: const Color(0xFF53E88B),
                    splashColor: Colors.blue,
                    radius: 15,
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(screens.accepted, (route) => false);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: DefaultText(
                            text: 'Next',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
