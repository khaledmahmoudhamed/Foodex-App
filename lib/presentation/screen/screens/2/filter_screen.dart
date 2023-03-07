import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../view/default_button.dart';
import '../../../../view/default_form_field.dart';
import '../../../../view/default_outlined_button.dart';
import '../../../../view/default_text.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          //physics: const NeverScrollableScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 80, right: 30),
                      child: ListTile(
                        title: Text(
                          "Find Your Favorite Food",
                          style: TextStyle(
                              fontSize: 35.sp, fontWeight: FontWeight.bold),
                        ),
                        // trailing: Container(child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none,color: Color(0xFF53E88B),size: 35,))),
                      ),
                    ),
                    const Image(image: AssetImage('assets/Group.png')),
                    Padding(
                      padding: const EdgeInsets.only(top: 90, right: 25),
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.notifications_none,
                              color: Color(0xFFFF833D),
                              size: 35,
                            )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      DefaultFormField(
                        width: 75.w,
                        radius: 30,
                        keyboardType: TextInputType.text,
                        textColor: Colors.blue,
                        hintText: 'What do you want to order?',
                        onTap: () {},
                        prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search,
                              color: Color(0xFFDA6317),
                              size: 30,
                            )),
                        backgroundColor: const Color(0xFFF9A84D),
                        inputEnabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black26,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        inputFocusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xFFDA6317),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.format_list_bulleted,
                            color: Color(0xFFDA6317),
                            size: 40,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Type',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          SizedBox(
                            width: 45.w,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    screens.exploreMenu, (route) => false);
                              },
                              child: Text(
                                'View More',
                                style: TextStyle(fontSize: 14.sp,color: const Color(0xFFFF7C32)),
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            DefaultOutlinedButton(
                                onPressed: () {},
                                width: 120,
                                radius: 30,
                                borderColor: const Color(0xFFDA6317),
                                child: Text(
                                  "Restaurant",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFDA6317)),
                                )),
                            SizedBox(
                              width: 10.w,
                            ),
                            DefaultOutlinedButton(
                                onPressed: () {},
                                width: 100,
                                radius: 30,
                                borderColor: const Color(0xFFDA6317),
                                child: Text(
                                  "Menu",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFDA6317)),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text(
                        'Location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            DefaultOutlinedButton(
                                onPressed: () {},
                                width: 80,
                                radius: 30,
                                borderColor: const Color(0xFFDA6317),
                                child: Text(
                                  "1 Km",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFDA6317)),
                                )),
                            SizedBox(
                              width: 5.w,
                            ),
                            DefaultOutlinedButton(
                                onPressed: () {},
                                width: 90,
                                radius: 30,
                                borderColor: const Color(0xFFDA6317),
                                child: Text(
                                  ">10 Km",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFDA6317)),
                                )),
                            SizedBox(
                              width: 5.w,
                            ),
                            DefaultOutlinedButton(
                                onPressed: () {},
                                width: 90,
                                radius: 30,
                                borderColor: const Color(0xFFDA6317),
                                child: Text(
                                  "<10 Km",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFDA6317)),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 3.h,
                      ),
                      const Text(
                        'Food',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color(0xFF09051C)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Row(
                          children: [
                            DefaultOutlinedButton(
                                onPressed: () {},
                                width: 80,
                                radius: 30,
                                borderColor: const Color(0xFFDA6317),
                                child: Text(
                                  "Cake",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFDA6317)),
                                )),
                            SizedBox(
                              width: 3.w,
                            ),
                            DefaultOutlinedButton(
                                onPressed: () {},
                                width: 90,
                                radius: 30,
                                borderColor: const Color(0xFFDA6317),
                                child: Text(
                                  "Soup",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFDA6317)),
                                )),
                            SizedBox(
                              width: 3.w,
                            ),
                            DefaultOutlinedButton(
                                onPressed: () {},
                                width: 130,
                                radius: 30,
                                borderColor: const Color(0xFFDA6317),
                                child: Text(
                                  "Main Course",
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: const Color(0xFFDA6317)),
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        children: [
                          DefaultOutlinedButton(
                              onPressed: () {},
                              width: 120,
                              radius: 30,
                              borderColor: const Color(0xFFDA6317),
                              child: Text(
                                "Appetizer",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFFDA6317)),
                              )),
                          SizedBox(
                            width: 5.w,
                          ),
                          DefaultOutlinedButton(
                              onPressed: () {},
                              width: 90,
                              radius: 30,
                              borderColor: const Color(0xFFDA6317),
                              child: Text(
                                "Dessert",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFFDA6317)),
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.h),
                  child: Center(
                    child: DefaultMaterialButton(
                      height: 8.h,
                      width: 100.w,
                      backgroundColor: const Color(0xFF53E88B),
                      splashColor: const Color(0xFFDA6317),
                      radius: 15,
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            screens.accepted, (route) => false);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: DefaultText(
                              text: 'Search',
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
          ],
        ),
      ),
    );
  }
}
