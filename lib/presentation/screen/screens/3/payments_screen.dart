import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_button.dart';
import 'package:my_app/constant/screens.dart' as screens;

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({Key? key}) : super(key: key);

  @override
  State<PaymentsScreen> createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
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
                                Navigator.pushNamedAndRemoveUntil(context, screens.payment, (route) => false);
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
                    'Confirm Order ',
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
                height: 120,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Deliver To',
                            style: TextStyle(
                                color: Color(0xFF3B3B3B),
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Edit',
                              style: TextStyle(
                                  color: Color(0xFF53E88B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
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
                            width: 3.w,
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
                height: 120,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10,left: 20,right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          const Text('Payment Method',style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF3B3B3B)
                          )),
                          TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Edit',
                              style: TextStyle(
                                  color: Color(0xFF53E88B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 4.h,),
                      Row(
                        children: [
                          const Icon(
                            Icons.paypal,
                            size: 30,
                            color: Color(0xFF253B80),
                          ),
                          const Text(
                            'Pay',
                            style: TextStyle(
                                color: Color(0xFF253B80),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontStyle: FontStyle.italic),
                          ),
                          const Text(
                            'Pal',
                            style: TextStyle(
                                color: Color(0xFF179BD7),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontStyle: FontStyle.italic),
                          ),
                          SizedBox(
                            width: 25.w,
                          ),
                          const Expanded(
                            child: Text(
                              'xxxxxxxxxxxxxxx',
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
            // SizedBox(height: 8.h,),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20,right: 20),
            //   child: Container(
            //     height: 50,
            //     width: double.infinity,
            //     decoration: const BoxDecoration(
            //     color: Colors.white,
            //       borderRadius: BorderRadius.all(Radius.circular(30))
            //     ),
            //     child: TextButton(onPressed: (){
            //       Navigator.pushNamedAndRemoveUntil(context, screens.payment, (route) => false);
            //     }, child: Text('Go To Payment Screen',style: TextStyle(
            //       fontSize: 17.sp,
            //
            //       color: Colors.green
            //     ),)),
            //   ),
            // ),
            SizedBox(
              height: 10.h,
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
                        children:  [
                          Text(
                            'Sub-Total',
                            style: TextStyle(color: const Color(0xFFFEFEFF),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text('120 \$',
                            style: TextStyle(color: const Color(0xFFFEFEFF),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Text(
                            'Delivery Charge',
                            style: TextStyle(color: const Color(0xFFFEFEFF),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text('10 \$',
                            style: TextStyle(color: const Color(0xFFFEFEFF),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Text(
                            'Discount',
                            style: TextStyle(color: const Color(0xFFFEFEFF),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text('20 \$',
                            style: TextStyle(color: const Color(0xFFFEFEFF),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          Text(
                            'Total',
                            style: TextStyle(color: const Color(0xFFFEFEFF),
                              fontSize: 16.sp,
                            ),
                          ),
                          Text('150 \$',
                            style: TextStyle(color: const Color(0xFFFEFEFF),
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      DefaultMaterialButton(
                        // backgroundColor: const Color(0xFFF9A84D),
                          backgroundColor: Colors.white,
                          splashColor: const Color(0xFFF9A84D),
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(context, screens.myOrder, (route) => false);
                          },
                          height: 50,
                          width: double.infinity,
                          elevation: 0,
                          radius: 15,
                          child: const Text('Place My Order',style: TextStyle(
                              color: Color(0xFF53E88B)
                          ),)
                      ),
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
