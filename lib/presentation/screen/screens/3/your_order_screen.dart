import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_button.dart';
import '../../../../view/default_form_field.dart';
import '../../../../view/default_text.dart';

class MyOrderScreen extends StatefulWidget {
  const MyOrderScreen({Key? key}) : super(key: key);

  @override
  State<MyOrderScreen> createState() => _MyOrderScreenState();
}

class _MyOrderScreenState extends State<MyOrderScreen> {
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
                  padding: const EdgeInsets.only(left: 20, top: 80, right: 30),
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
                    width: 70.w,
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
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:
                          Image(image: AssetImage('assets/myOrder1.png')),
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
                      padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 6.w),
                      child: Center(
                        child: DefaultMaterialButton(
                          height: 4.h,
                          width: 25.w,
                          backgroundColor: const Color(0xFF53E88B),
                          radius: 15,
                          onPressed: () {
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              DefaultText(
                                text: 'Process',
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
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:
                      Image(image: AssetImage('assets/myOrder2.png')),
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
                      padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 6.w),
                      child: Center(
                        child: DefaultMaterialButton(
                          height: 4.h,
                          width: 25.w,
                          backgroundColor: const Color(0xFF53E88B),
                          radius: 15,
                          onPressed: () {
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              DefaultText(
                                text: 'Process',
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
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
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
                      Image(image: AssetImage('assets/myOrder3.png')),
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
                      padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 6.w),
                      child: Center(
                        child: DefaultMaterialButton(
                          height: 4.h,
                          width: 25.w,
                          backgroundColor: const Color(0xFFD9D9D9),
                          radius: 15,
                          onPressed: () {
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              DefaultText(
                                text: 'Process',
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
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                    color:  Color(0xFFF6F6F6),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child:
                      Image(image: AssetImage('assets/myOrder4.png')),
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
                      padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 6.w),
                      child: Center(
                        child: DefaultMaterialButton(
                          height: 4.h,
                          width: 25.w,
                          backgroundColor: const Color(0xFFD9D9D9),
                          radius: 15,
                          onPressed: () {
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:  [
                              DefaultText(
                                text: 'Process',
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
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: DefaultMaterialButton(
                  backgroundColor: const Color(0xFF53E88B),
                  onPressed: () {},
                  height: 50,
                  width: double.infinity,
                  elevation: 0,
                  radius: 15,
                  child: const Text('Check out',style: TextStyle(
                      color: Colors.white
                  ),)
              ),
            ),
            SizedBox(height: 6.h,)

          ],
        ),
      ),
    );
  }
}
