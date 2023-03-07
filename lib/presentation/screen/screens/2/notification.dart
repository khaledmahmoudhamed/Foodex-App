import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_button.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
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
                        backgroundColor: const Color(0xFFF9A84D),
                        onPressed: () {},
                        height: 30,
                        width: 50,
                        elevation: 0,
                        radius: 10,
                        child: IconButton(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(4),
                            onPressed: () {
                              Navigator.pop(context);
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
                  'Notification',
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
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Stack(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50, bottom: 2),
                          child: Image(
                            image: AssetImage('assets/smallDot.png'),
                            height: 15,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Image(
                          image: AssetImage('assets/checkedNotification.png'),
                          height: 50,
                          fit: BoxFit.fitHeight,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2),
                          child: Image(
                            image: AssetImage('assets/smallDot.png'),
                            // height: 15,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      'Your order has been taken by\n the driver',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 175,top: 20),
                      child: Text(
                        'Recently',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: const Color(0xFF3B3B3B),
                            fontSize: 15.sp),
                      ),
                    ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Stack(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50, bottom: 2),
                          child: Image(
                            image: AssetImage('assets/smallDot2.png'),
                            height: 15,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Image(
                          image: AssetImage('assets/moneyNotification.png'),
                          height: 50,
                          fit: BoxFit.fitHeight,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2),
                          child: Image(
                            image: AssetImage('assets/smallDot2.png'),
                            // height: 15,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Text(
                      'Topup for \$100 was successful',
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 14.sp),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 160,top: 20),
                      child: Text(
                        '10.00 Am',
                        style: TextStyle(fontWeight: FontWeight.bold,
                            color: const Color(0xFF3B3B3B),
                            fontSize: 15.sp),
                      ),
                    ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),  SizedBox(
            height: 2.h,
          ),
          // Expanded(
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 20,right: 20),
          //     child: Container(
          //       height: 100,
          //       width: double.infinity,
          //       decoration: const BoxDecoration(
          //         color: Colors.white,
          //         borderRadius: BorderRadius.all(Radius.circular(30)),
          //       ),
          //       child: Padding(
          //         padding: const EdgeInsets.only(left: 20),
          //         child: Row(
          //           children: [
          //             Stack(
          //               children: const [
          //                 Padding(
          //                   padding: EdgeInsets.only(left: 50, bottom: 2),
          //                   child: Image(
          //                     image: AssetImage('assets/smallDot3.png'),
          //                     height: 15,
          //                     fit: BoxFit.fitHeight,
          //                   ),
          //                 ),
          //                 Image(
          //                   image: AssetImage('assets/x-buttonNotification.png'),
          //                   height: 50,
          //                   fit: BoxFit.fitHeight,
          //                 ),
          //                 Padding(
          //                   padding: EdgeInsets.only(bottom: 2),
          //                   child: Image(
          //                     image: AssetImage('assets/smallDot3.png'),
          //                     // height: 15,
          //                     fit: BoxFit.fitHeight,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //             Text(
          //               'Your order has been canceled',
          //               style: TextStyle(fontWeight: FontWeight.bold,
          //                   fontSize: 15.sp),
          //             ),
          //             Padding(
          //               padding: const EdgeInsets.only(right: 130,top: 20),
          //               child: Text(
          //                 '22 Juny 2021',
          //                 style: TextStyle(fontWeight: FontWeight.bold,
          //                     color: const Color(0xFF3B3B3B),
          //                     fontSize: 15.sp),
          //               ),
          //             ),
          //               ],
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 130,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Stack(
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 50, bottom: 2),
                          child: Image(
                            image: AssetImage('assets/smallDot3.png'),
                            height: 15,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        Image(
                          image: AssetImage('assets/x-buttonNotification.png'),
                          height: 50,
                          fit: BoxFit.fitHeight,
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 2),
                          child: Image(
                            image: AssetImage('assets/smallDot3.png'),
                            // height: 15,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Your order has been taken by\n the driver',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 175,top: 20),
                          child: Text(
                            'Recently',
                            style: TextStyle(fontWeight: FontWeight.bold,
                                color: const Color(0xFF3B3B3B),
                                fontSize: 15.sp),
                          ),
                        ),
                      ],
                    )
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
