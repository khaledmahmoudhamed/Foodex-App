import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_form_field.dart';
import 'package:my_app/constant/screens.dart' as screens;

import 'my_home_page.dart';

class ExploreMenu extends StatefulWidget {
  const ExploreMenu({Key? key}) : super(key: key);

  @override
  State<ExploreMenu> createState() => _ExploreMenuState();
}

class _ExploreMenuState extends State<ExploreMenu> {
  int i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
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
              height: 2.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Row(
                    children:  [
                      const Text(
                        'Popular Menu',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        width: 30.w,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context, screens.exploreRestaurantWithFilter, (route) => false);
                          },
                          child: Text(
                            'View More',
                            style: TextStyle(fontSize: 14.sp,color: const Color(0xFFFF7C32)),
                          ))
                    ],
                  ),
                  SizedBox(height: 3.h,),
                  InkWell(
                    onTap: (){},
                    child: Container(
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
                  ),
                  SizedBox(height: 2.h,),
                  InkWell(
                    onTap: (){},
                    child: Container(
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
                  ),
                  SizedBox(height: 2.h,),
                  InkWell(
                    onTap: (){},
                    child: Container(
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
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Product Details ',style: TextStyle(
                        fontSize: 14.sp
                      ),),
                      TextButton(onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, screens.menuDetails, (route) => false);
                      }, child: Text('Click Here! ',style: TextStyle(
                        fontSize: 16.sp
                      ),)),
                      SizedBox(height: 6.h,)
                    ],
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
