import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_button.dart';
import 'package:my_app/constant/screens.dart' as screens;

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  int number = 1;
  int subTotal = 120;
  int deliveryCharge = 10;
  int discount = 20;
  // int total=(subTotal+deliveryCharge+discount);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                                Navigator.pushNamedAndRemoveUntil(context,
                                    screens.exploreMenu, (route) => false);
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
                    'Order details',
                    style:
                        TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
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
                          Image(image: AssetImage('assets/orderDetails1.png')),
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
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 35,
                        // margin: const EdgeInsets.only(bottom: 10,),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xFF15BE77),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          clipBehavior: Clip.none,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                number--;
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              size: 30,
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text('$number'),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFF15BE77),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        clipBehavior: Clip.none,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              number++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
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
                          Image(image: AssetImage('assets/orderDetails2.png')),
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
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 35,
                        // margin: const EdgeInsets.only(bottom: 10,),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xFF15BE77),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          clipBehavior: Clip.none,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                number--;
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              size: 30,
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text('$number'),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFF15BE77),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        clipBehavior: Clip.none,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              number++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 2.h,
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
                          Image(image: AssetImage('assets/orderDetails3.png')),
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
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 35,
                        // margin: const EdgeInsets.only(bottom: 10,),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color(0xFF15BE77),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: ClipRRect(
                          clipBehavior: Clip.none,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                number--;
                              });
                            },
                            icon: const Icon(
                              Icons.remove,
                              size: 30,
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Text('$number'),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    Container(
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: Color(0xFF15BE77),
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: ClipRRect(
                        clipBehavior: Clip.none,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              number++;
                            });
                          },
                          icon: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Product Details ',
                  style: TextStyle(fontSize: 14.sp),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, screens.productDetailsTwo, (route) => false);
                    },
                    child: Text(
                      'Click Here! ',
                      style: TextStyle(fontSize: 16.sp),
                    )),
              ],
            ),
            SizedBox(
              height: 7.h,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color(0xFF53E88B),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub-Total',
                            style: TextStyle(
                              color: const Color(0xFFFEFEFF),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '120 \$',
                            style: TextStyle(
                              color: const Color(0xFFFEFEFF),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Charge',
                            style: TextStyle(
                              color: const Color(0xFFFEFEFF),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '10 \$',
                            style: TextStyle(
                              color: const Color(0xFFFEFEFF),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discount',
                            style: TextStyle(
                              color: const Color(0xFFFEFEFF),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '20 \$',
                            style: TextStyle(
                              color: const Color(0xFFFEFEFF),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total',
                            style: TextStyle(
                              color: const Color(0xFFFEFEFF),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text(
                            '150 \$',
                            style: TextStyle(
                              color: const Color(0xFFFEFEFF),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      DefaultMaterialButton(
                          // backgroundColor: const Color(0xFFF9A84D),
                          backgroundColor: Colors.white,
                          splashColor: const Color(0xFFF9A84D),
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                                context, screens.myOrder, (route) => false);
                          },
                          height: 50,
                          width: double.infinity,
                          elevation: 0,
                          radius: 15,
                          child: const Text(
                            'Place My Order',
                            style: TextStyle(color: Color(0xFF53E88B)),
                          )),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
