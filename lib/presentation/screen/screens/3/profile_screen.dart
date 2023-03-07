import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_button.dart';
import '../../../../view/default_text.dart';

class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {

  int i=0;
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
              label: "Profile",
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
              label: "Messages",
              icon: Icon(
                Icons.chat,
                size: 23,
              )),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const Image(
                  image: AssetImage('assets/profile.png'),
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 45.h),
                  child: Container(
                    width: double.infinity,
                    height: 105.h,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Container(
                              height: 2.h,
                              width: 30.w,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFFEF6ED),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              DefaultMaterialButton(
                                backgroundColor: const Color(0xFFFEF6ED),
                                onPressed: () {},
                                height: 30,
                                width: 90,
                                elevation: 0,
                                radius: 10,
                                child: const Text(
                                  'Popular',
                                  style: TextStyle(color: Color(0xFFFEAD1D)),
                                ),
                              ),
                              SizedBox(
                                width: 40.w,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Anam Wusono',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23.sp),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.edit_outlined),
                                color: const Color(0xFF53E88B),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 53.w),
                            child: const Text('anamwp66@gmail.com'),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: const BoxDecoration(
                            color: Colors.black12,
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                            height: 80,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20,right: 20),
                              child: Row(
                                children:  [
                                  const Image(image: AssetImage('assets/profile1.png'),height: 30,
                                  width: 40,
                                    fit: BoxFit.fitWidth,
                                  ),
                                  SizedBox(width: 15.w,),
                                  Text('You Have 3 Voucher',style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold
                                  ),)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Text('Favorite',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.sp
                          ),),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Color(0xFFF6F6F6),
                                borderRadius: BorderRadius.all(Radius.circular(30))),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child:
                                  Image(image: AssetImage('assets/profile2.png')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15, left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Spacy fresh crab',
                                        style: TextStyle(
                                            color: Color(0xFF09051C),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      const Text(
                                        'Waroenk kita',
                                        style: TextStyle(
                                            color: Color(0xFF3B3B3B), fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      const Text(
                                        '\$ 35',
                                        style: TextStyle(color: Color(0xFF53E88B)),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 5.w),
                                  child: Center(
                                    child: DefaultMaterialButton(
                                      height: 5.h,
                                      width: 27.w,
                                      backgroundColor: const Color(0xFF53E88B),
                                      radius: 15,
                                      onPressed: () {
                                      },
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:  [
                                          DefaultText(
                                            text: 'Buy Again',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                // ElevatedButton(onPressed: (){}, child: Text('Process'))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Color(0xFFF6F6F6),
                                borderRadius: BorderRadius.all(Radius.circular(30))),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child:
                                  Image(image: AssetImage('assets/profile3.png')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15, left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Spacy fresh crab',
                                        style: TextStyle(
                                            color: Color(0xFF09051C),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      const Text(
                                        'Waroenk kita',
                                        style: TextStyle(
                                            color: Color(0xFF3B3B3B), fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      const Text(
                                        '\$ 35',
                                        style: TextStyle(color: Color(0xFF53E88B)),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 5.w),
                                  child: Center(
                                    child: DefaultMaterialButton(
                                      height: 5.h,
                                      width: 27.w,
                                      backgroundColor: const Color(0xFF53E88B),
                                      radius: 15,
                                      onPressed: () {
                                      },
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:  [
                                          DefaultText(
                                            text: 'Buy Again',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                // ElevatedButton(onPressed: (){}, child: Text('Process'))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: const BoxDecoration(
                                color: Color(0xFFF6F6F6),
                                borderRadius: BorderRadius.all(Radius.circular(30))),
                            child: Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child:
                                  Image(image: AssetImage('assets/profile4.png')),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15, left: 20),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Spacy fresh crab',
                                        style: TextStyle(
                                            color: Color(0xFF09051C),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      const Text(
                                        'Waroenk kita',
                                        style: TextStyle(
                                            color: Color(0xFF3B3B3B), fontSize: 14),
                                      ),
                                      SizedBox(
                                        height: 2.h,
                                      ),
                                      const Text(
                                        '\$ 35',
                                        style: TextStyle(color: Color(0xFF53E88B)),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 5.w),
                                  child: Center(
                                    child: DefaultMaterialButton(
                                      height: 5.h,
                                      width: 27.w,
                                      backgroundColor: const Color(0xFF53E88B),
                                      radius: 15,
                                      onPressed: () {
                                      },
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children:  [
                                          DefaultText(
                                            text: 'Buy Again',
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                // ElevatedButton(onPressed: (){}, child: Text('Process'))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
