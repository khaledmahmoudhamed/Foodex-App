import 'package:flutter/material.dart';
import 'package:my_app/view/default_button.dart';
import 'package:sizer/sizer.dart';

import '../../../../view/default_text.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({Key? key}) : super(key: key);

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {

  int increment=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image(
                    image: const AssetImage(
                      'assets/Photo Restaurant.jpg',
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
                      height: 180.h,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      style:
                                          TextStyle(color: Color(0xFF15BE77)),
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
                                  'Wijie Bar and Resto',
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
                                    Icons.location_on,
                                    color: Color(0xFF15BE77),
                                  ),
                                ),
                                const Text('19 Km'),
                                SizedBox(
                                  width: 10.w,
                                ),
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
                              ],
                            ),
                            const Text(
                              'Most whole Alaskan Red King Crabs get broken down into legs, claws, and lump meat. We offer all of these options as well in our online shop, but there is nothing like getting the whole . . . .',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Popular Menu',
                                  style: TextStyle(
                                      color: const Color(0xFF09051C),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.sp),
                                ),
                                TextButton(
                                    onPressed: () {},
                                    child: const Text(
                                      'View All',
                                      style: TextStyle(
                                        color: Color(0xFFFF7C32),
                                      ),
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 1.h,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 140,
                                      width: 170,
                                      decoration: const BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Image(
                                                image: AssetImage(
                                              'assets/detailProduct1.png',
                                            )),
                                          ),
                                          Text(
                                            'Spacy fresh crab',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('12 \$')
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 140,
                                      width: 170,
                                      decoration: const BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Image(
                                                image: AssetImage(
                                              'assets/detailProduct2.png',
                                            )),
                                          ),
                                          Text(
                                            'Spacy fresh crab',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('16 \$')
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      height: 140,
                                      width: 170,
                                      decoration: const BoxDecoration(
                                          color: Colors.black12,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30))),
                                      child: Column(
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Image(
                                                image: AssetImage(
                                              'assets/myOrder1.png',
                                            )),
                                          ),
                                          Text(
                                            'Spacy fresh crab',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text('20 \$')
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.w,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 220),
                              child: Text(
                                'Testimonials',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            InkWell(
                              onTap:(){},
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
                                            children:  [
                                              const Text(
                                                'Dianne Russell',
                                                style: TextStyle(
                                                    color: Color(0xFF09051C),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(width: 20.w,),
                                              Container(
                                                height: 30,
                                                width: 40,
                                                decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.all(Radius.circular(30))
                                                ),
                                                child: Row(
                                                  children: const [
                                                    Icon(Icons.star,color: Color(0xFF53E88B),),
                                                    Text('5',style: TextStyle(color:Color(0xFF15BE77) ),)
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
                              onTap:(){},
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
                                            children:  [
                                              const Text(
                                                'Dianne Russell',
                                                style: TextStyle(
                                                    color: Color(0xFF09051C),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15),
                                              ),
                                              SizedBox(width: 20.w,),
                                              Container(
                                                height: 30,
                                                width: 40,
                                                decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius: BorderRadius.all(Radius.circular(30))
                                                ),
                                                child: Row(
                                                  children: const [
                                                    Icon(Icons.star,color: Color(0xFF53E88B),),
                                                    Text('5',style: TextStyle(color:Color(0xFF15BE77) ),)
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
              )
            ],
          )
        ],
      ),
    );
  }
}
