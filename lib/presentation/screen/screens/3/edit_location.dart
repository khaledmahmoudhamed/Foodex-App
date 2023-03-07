import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_button.dart';
import 'package:my_app/constant/screens.dart' as screens;

class EditLocationScreen extends StatefulWidget {
  const EditLocationScreen({Key? key}) : super(key: key);

  @override
  State<EditLocationScreen> createState() => _EditLocationScreenState();
}

class _EditLocationScreenState extends State<EditLocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: DefaultMaterialButton(
                        // backgroundColor: const Color(0xFFF9A84D),
                        backgroundColor: Colors.white70,
                        splashColor: const Color(0xFFF9A84D),
                        onPressed: () {},
                        height: 30,
                        width: 50,
                        elevation: 0,
                        radius: 10,
                        child: IconButton(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(4),
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(context, screens.mapLocation, (route) => false);
                            },
                            icon: const Icon(
                              Icons.arrow_back_ios,
                              color: Color(0xFFDA6317),
                            ))),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 3),
                    child: Image(image: AssetImage('assets/Group.png')),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130, left: 20),
                child: Text(
                  'Shipping ',
                  style:
                      TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Order Location',
                          style: TextStyle(
                              color: Color(0xFF3B3B3B),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xFFFFE14D),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.location_on),
                            color: const Color(0xFFE86D28),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Expanded(
                          child: Text(
                            'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                            style: TextStyle(),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 4.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Deliver To',
                          style: TextStyle(
                              color: Color(0xFF3B3B3B),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color(0xFFFFE14D),
                          child: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.location_on),
                            color: const Color(0xFFE86D28),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        const Expanded(
                          child: Text(
                            'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                            style: TextStyle(),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 70),
                      child: Row(
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context, screens.mapLocation, (route) => false);
                              },
                              child: Text(
                                'set location',
                                style: TextStyle(
                                    color: const Color(0xFF53E88B),
                                    fontSize: 16.sp),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
