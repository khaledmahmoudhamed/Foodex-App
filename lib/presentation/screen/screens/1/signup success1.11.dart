import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart'as screens;

import '../../../../view/default_button.dart';
import '../../../../view/default_text.dart';

class SignupSuccessScreen extends StatefulWidget {
  const SignupSuccessScreen({Key? key}) : super(key: key);

  @override
  State<SignupSuccessScreen> createState() => _SignupSuccessScreenState();
}

class _SignupSuccessScreenState extends State<SignupSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                CircleAvatar(
                    radius: 50,
                    backgroundColor: const Color(0xFF53E88B),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.check,color: Colors.white,size: 60,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                          ],
                        ),

                      ],
                    )
                ) ,
              Text(
                'Congrats!',
                style: TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF53E88B)),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                'Your Profile Is Ready To Use',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF09051C)),
              ),
              ],
            )

          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.h),
            child: Center(
              child: DefaultMaterialButton(
                height: 8.h,
                width: 50.w,
                backgroundColor: const Color(0xFF53E88B),
                splashColor: Colors.blue,
                radius: 15,
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(screens.accepted, (route) => false);
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: DefaultText(
                        text: 'Try Order',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
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
