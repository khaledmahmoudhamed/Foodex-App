import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../view/default_button.dart';

class VoucherPromoScreen extends StatefulWidget {
  const VoucherPromoScreen({Key? key}) : super(key: key);

  @override
  State<VoucherPromoScreen> createState() => _VoucherPromoScreenState();
}

class _VoucherPromoScreenState extends State<VoucherPromoScreen> {
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
                              Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  screens.exploreMenuWithFilter,
                                  (route) => false);
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
                  'Voucher Promo',
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
              height: 170,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFF53E88B),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage('assets/voucher Promo.png'),
                    // fit: BoxFit.fitHeight,
                    height: 150,
                    fit: BoxFit.fill,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 7),
                      child: Column(
                        children: [
                          Text(
                            'Special Deal For\n October',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30, top: 10),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 0,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Order Now',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF009C51)),
                                )),
                          ),
                        ],
                      ),
                    ),
                  )
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
              height: 170,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFFE9F7BA),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage('assets/voucher Promo2.png'),
                    height: 90,
                    fit: BoxFit.fitHeight,
                    // height: 150,
                    // fit: BoxFit.fill,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, right: 7),
                      child: Column(
                        children: [
                          Text(
                            'Special Deal For\n October',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: const Color(0xFF6B3A5B),
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 30, top: 10),
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 0,
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Order Now',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF6B3A5B)),
                                )),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: DefaultMaterialButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, screens.notification, (route) => false);
                },
                backgroundColor: const Color(0xFF53E88B),
                height: 10.h,
                width: double.infinity,
                radius: 30,
                child: Text(
                  'Check out',
                  style: TextStyle(
                      fontSize: 17.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          Container()
        ],
      ),
    );
  }
}
