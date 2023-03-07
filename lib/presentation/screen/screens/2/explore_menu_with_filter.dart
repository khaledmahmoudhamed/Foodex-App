import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_form_field.dart';
import '../../../../view/default_outlined_button.dart';
import 'package:my_app/constant/screens.dart' as screens;

class ExploreMenuWithFilter extends StatefulWidget {
  const ExploreMenuWithFilter({Key? key}) : super(key: key);

  @override
  State<ExploreMenuWithFilter> createState() =>
      _ExploreMenuWithFilterState();
}

class _ExploreMenuWithFilterState
    extends State<ExploreMenuWithFilter> {
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
                  padding: const EdgeInsets.only(left: 10, top: 55, right: 30),
                  child: ListTile(
                    title: Text(
                      "Find Your Favorite Food",
                      style:
                          TextStyle(fontSize: 35.sp, fontWeight: FontWeight.bold),
                    ),
                    // trailing: Container(child: IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none,color: Color(0xFF53E88B),size: 35,))),
                  ),
                ),
                const Image(image: AssetImage('assets/Group.png')),
                Padding(
                  padding: const EdgeInsets.only(top: 80, right: 25),
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
              padding: const EdgeInsets.only(top: 14),
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
              child: Row(
                children: [
                  DefaultOutlinedButton(
                      onPressed: () {
                      },
                      width: 120,
                      radius: 30,
                      borderColor: const Color(0xFFDA6317),
                      child: Row(
                        children: [
                          Text(
                            "Soup",
                            style: TextStyle(
                                fontSize: 12.sp, color: const Color(0xFFDA6317)),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.close,
                                color: Color(0xFFFEAD1D),
                              )),
                        ],
                      )
                  ),


                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  Text(
                    'Popular Menu',
                    style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, screens.orderDetails, (route) => false);
                      },
                      child: Text(
                        'View More',
                        style: TextStyle(fontSize: 14.sp,color: const Color(0xFFFF7C32)),
                      ))

                ],
              ),
            ),
            SizedBox(height: 3.h,),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child:  const ListTile(
                      leading: Image(image: AssetImage('assets/Menu Photo.png')),
                      title: Text('Herbal Pancake'),
                      subtitle: Text('Warung Herbal'),
                      trailing: Text('\$7',style: TextStyle(color: Color(0xFFFEAD1D)),),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Container(
                    width: double.infinity,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child:  const ListTile(
                      leading: Image(image: AssetImage('assets/Photo Menu.png')),
                      title: Text('Fruit Salad'),
                      subtitle: Text('Wijie Resto'),
                      trailing: Text('\$5',style: TextStyle(color: Color(0xFFFEAD1D)),),
                    ),
                  ),
                  SizedBox(height: 2.h,),
                  Container(
                    width: double.infinity,
                    height: 80,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                    ),
                    child:  const ListTile(
                      leading: Image(image: AssetImage('assets/Photo Menuu.png')),
                      title: Text('Green Noddle'),
                      subtitle: Text('Noodle Home'),
                      trailing: Text('\$15',style: TextStyle(color: Color(0xFFFEAD1D)),),
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
