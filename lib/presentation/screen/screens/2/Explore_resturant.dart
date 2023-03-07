import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../view/default_form_field.dart';
import 'my_home_page.dart';

class ExploreRestaurant extends StatefulWidget {
  const ExploreRestaurant({Key? key}) : super(key: key);

  @override
  State<ExploreRestaurant> createState() => _ExploreRestaurantState();
}

class _ExploreRestaurantState extends State<ExploreRestaurant> {
  // List food = [
  //   {"name": "Kofta and Kebab", "price": "2000 Le"},
  //   {"name": "Shawarma", "price": "120 Le"},
  //   {"name": "Fiteer Baladi.", "price": ""},
  //   {"name": "Koshary", "price": "70 Le"},
  //   {"name": "Hamam Mahshi", "price": "170 Le"},
  //   {"name": "Molokhiya ", "price": "150 Le"},
  // ];
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF53E88B),
        unselectedItemColor: Colors.blue,
        currentIndex: i,
        onTap: (index) {
          setState(() {
            i = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
                size: 23,
              )),
          BottomNavigationBarItem(
              label: "Person",
              icon: Icon(
                Icons.person,
                size: 23,
              )),
          BottomNavigationBarItem(
              label: "Buy",
              icon: Icon(
                Icons.shopping_cart,
                size: 23,
              )),
          BottomNavigationBarItem(
              label: "Chat",
              icon: Icon(
                Icons.chat,
                size: 23,
              )),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 80, right: 30),
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
                        borderRadius: BorderRadius.all(Radius.circular(50))),
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
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    "Popular Restaurant",
                    style:
                        TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, screens.filter, (route) => false);
                      },
                      child: Text(
                        'View More',
                        style: TextStyle(fontSize: 14.sp,color: const Color(0xFFFF7C32)),
                      ))
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
            //   child: Column(
            //     children: [
            //       GridView.builder(
            //         shrinkWrap: true,
            //         physics: const NeverScrollableScrollPhysics(),
            //         itemCount: food.length,
            //         gridDelegate:
            //             const SliverGridDelegateWithFixedCrossAxisCount(
            //                 crossAxisSpacing: 15,
            //                 mainAxisSpacing: 30,
            //                 crossAxisCount: 2),
            //         itemBuilder: (context, i) {
            //           return Container(
            //             height: 200,
            //             color: Colors.white,
            //             child: Column(
            //               children: [
            //                 const Padding(
            //                   padding: EdgeInsets.only(top: 15),
            //                   child: Image(
            //                       image: AssetImage('assets/resturant.png')),
            //                 ),
            //                 SizedBox(
            //                   height: 3.h,
            //                 ),
            //                 Text(
            //                   'Vegan Resto',
            //                   style: TextStyle(fontSize: 14.sp),
            //                 ),
            //                 Text('12 Mins', style: TextStyle(fontSize: 12.sp))
            //               ],
            //             ),
            //           );
            //         },
            //       ),
            //     ],
            //   ),
            // )
            SizedBox(height: 3.h,),
            Row(
              children: [
                InkWell(onTap: (){},
                  child: Container(
                    height: 180,
                    width: 140,
                    padding: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        const Image(image: AssetImage('assets/resturant.png')),
                        SizedBox(height: 2.h,),
                        Text(
                          'Vegan Resto',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        Text('12 Mins',style: TextStyle(
                          fontSize: 12.sp,),),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 14.w,),
                InkWell(onTap: (){},
                  child: Container(
                    height: 180,
                    width: 140,
                    padding: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        const Image(image: AssetImage('assets/Restaurant Image five.png')),
                        SizedBox(height: 2.h,),
                        Text(
                          'Healthy Food',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        Text('8 Mins',style: TextStyle(
                          fontSize: 12.sp,),),
                      ],
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 5.h,),
            Row(
              children: [
                InkWell(onTap: (){},
                  child: Container(
                    height: 180,
                    width: 140,
                    padding: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        const Image(image: AssetImage('assets/Restaurant Image two.png')),
                        SizedBox(height: 2.h,),
                        Text(
                          'Good Food',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        Text('12 Mins',style: TextStyle(
                          fontSize: 12.sp,),),
                      ],
                    ),
                  ),

                ),
                SizedBox(width: 14.w,),
                InkWell(onTap: (){},
                  child: Container(
                    height: 180,
                    width: 140,
                    padding: const EdgeInsets.only(top: 20),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        const Image(image: AssetImage('assets/Restaurant Image four.png')),
                        SizedBox(height: 2.h,),
                        Text(
                          'Smart Resto',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold),
                        ),
                        Text('8 Mins',style: TextStyle(
                          fontSize: 12.sp,),),
                      ],
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
