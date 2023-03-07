import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;
import '../../../../view/default_button.dart';

class EditPaymentsScreen extends StatefulWidget {
  const EditPaymentsScreen({Key? key}) : super(key: key);

  @override
  State<EditPaymentsScreen> createState() => _EditPaymentsscreenState();
}

class _EditPaymentsscreenState extends State<EditPaymentsScreen> {
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
                      // backgroundColor: const Color(0xFFF9A84D),
                        backgroundColor: Colors.white70,
                        splashColor: const Color(0xFFF9A84D),
                        onPressed: () {
                        },
                        height: 30,
                        width: 50,
                        elevation: 0,
                        radius: 10,
                        child: IconButton(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(4),
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(context, screens.confirmOrder, (route) => false);

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
                  'Payment ',
                  style:
                  TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
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
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 4.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'VISA',
                          style: TextStyle(
                              color: Color(0xFF2566AF),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 37.w,
                        ),
                        const Expanded(
                          child: Text(
                            'xxxxxxxxxxxxxxx',
                            style: TextStyle(),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 4.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20,top: 33),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          'Pa',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic),
                        ),
                        const Image(image: AssetImage('assets/true.png'),),
                        const Text(
                          'oneer',
                          style: TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              fontStyle: FontStyle.italic),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        const Expanded(
                          child: Text(
                            'xxxxxxxxxxxxxxx',
                            style: TextStyle(),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),
    );
  }
}
