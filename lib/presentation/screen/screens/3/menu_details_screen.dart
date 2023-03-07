import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_button.dart';

class MenuDetailScreen extends StatefulWidget {
  const MenuDetailScreen({Key? key}) : super(key: key);

  @override
  State<MenuDetailScreen> createState() => _MenuDetailScreenState();
}

class _MenuDetailScreenState extends State<MenuDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image(
                  image: const AssetImage(
                    'assets/menuDetail1.jpg',
                  ),
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                  height: 60.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 45.h),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    width: double.infinity,
                    height: 150.h,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DefaultMaterialButton(
                                  backgroundColor: const Color(0xFF53E88B),
                                  onPressed: () {},
                                  height: 30,
                                  width: 90,
                                  elevation: 0,
                                  radius: 10,
                                  child: const Text(
                                    'Popular',
                                    style: TextStyle(color: Color(0xFF15BE77)),
                                  ),
                                ),
                                SizedBox(
                                  width: 40.w,
                                ),
                                CircleAvatar(
                                  backgroundColor: const Color(0xFFFEF6ED),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.location_on,
                                      color: Color(0xFF15BE77),
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  backgroundColor: const Color(0xFFFEF6ED),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Color(0xFFFF1D1D),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Rainbow Sandwich Sugarless',
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    color: const Color(0xFF09051C),
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.star_half,
                                  color: Color(0xFF15BE77),
                                ),
                              ),
                              const Text('4,8 Rating'),
                              SizedBox(
                                height: 3.h,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              const Icon(
                                Icons.shopping_bag_sharp,
                                color: Color(0xFF3FDA85),
                              ),
                              const Text('2000+ Order'),
                              SizedBox(
                                width: 4.w,
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.location_on,
                                  color: Color(0xFF15BE77),
                                ),
                              ),
                              const Text('19 Km'),
                            ],
                          ),
                          const Text(
                            '''Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.''',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 40.h),
                            child: const Text('''
                           - Strowberry
                           - Cream
                           - wheat
                              ''',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const Text(
                              ''' Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt.''',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(
                            height: 3.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Testimonials',
                                style: TextStyle(
                                    color: const Color(0xFF09051C),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.sp),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              height: 140,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/detailProduct3.png')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'Dianne Russell',
                                              style: TextStyle(
                                                  color: Color(0xFF09051C),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            Container(
                                              height: 30,
                                              width: 40,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(30))),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xFF53E88B),
                                                  ),
                                                  Text(
                                                    '5',
                                                    style: TextStyle(
                                                        color:
                                                        Color(0xFF15BE77)),
                                                  )
                                                ],
                                              ),
                                            )
                                            // IconButton(
                                            //     onPressed: () {
                                            //       setState(() {
                                            //         if(increment>0&&increment<5){
                                            //         increment++;
                                            //
                                            //         }
                                            //       });
                                            //     },
                                            //     icon: const Icon(Icons.star,color: Color(0xFF53E88B),)),
                                            // Text('$increment',style:  TextStyle(
                                            //   fontWeight: FontWeight.bold,
                                            //     fontSize: 14.sp,
                                            //     color: const Color(0xFF53E88B)
                                            // ),)
                                          ],
                                        ),
                                        const Text(
                                          '12 April 2021',
                                          style: TextStyle(
                                              color: Color(0xFF3B3B3B),
                                              fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        const Text(
                                          'This Is great, So delicious! You Must\n Here, With Your family . . ',
                                          style: TextStyle(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3.h,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              width: double.infinity,
                              height: 140,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFF6F6F6),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                              child: Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Image(
                                        image: AssetImage(
                                            'assets/detailProduct4.png')),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            const Text(
                                              'Dianne Russell',
                                              style: TextStyle(
                                                  color: Color(0xFF09051C),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            SizedBox(
                                              width: 20.w,
                                            ),
                                            Container(
                                              height: 30,
                                              width: 40,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.all(
                                                      Radius.circular(30))),
                                              child: Row(
                                                children: const [
                                                  Icon(
                                                    Icons.star,
                                                    color: Color(0xFF53E88B),
                                                  ),
                                                  Text(
                                                    '5',
                                                    style: TextStyle(
                                                        color:
                                                        Color(0xFF15BE77)),
                                                  )
                                                ],
                                              ),
                                            )
                                            // IconButton(
                                            //     onPressed: () {
                                            //       setState(() {
                                            //         if(increment>0&&increment<5){
                                            //         increment++;
                                            //
                                            //         }
                                            //       });
                                            //     },
                                            //     icon: const Icon(Icons.star,color: Color(0xFF53E88B),)),
                                            // Text('$increment',style:  TextStyle(
                                            //   fontWeight: FontWeight.bold,
                                            //     fontSize: 14.sp,
                                            //     color: const Color(0xFF53E88B)
                                            // ),)
                                          ],
                                        ),
                                        const Text(
                                          '12 April 2021',
                                          style: TextStyle(
                                              color: Color(0xFF3B3B3B),
                                              fontSize: 12),
                                        ),
                                        SizedBox(
                                          height: 2.h,
                                        ),
                                        const Text(
                                          'This Is great, So delicious! You Must\n Here, With Your family . . ',
                                          style: TextStyle(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),

          ],
        ),
      ),
      
    );
  }
}
