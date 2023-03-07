import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../view/default_button.dart';
import '../../../../view/default_text.dart';
class SuccessNotification extends StatefulWidget {
  const SuccessNotification({Key? key}) : super(key: key);

  @override
  State<SuccessNotification> createState() => _SuccessNotificationState();
}

class _SuccessNotificationState extends State<SuccessNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                widthFactor: double.infinity,
                child: Stack(
                  // fit: StackFit.loose,
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 80.h),
                      child: Center(
                        child: DefaultMaterialButton(
                          height: 8.h,
                          width: 50.w,
                          backgroundColor: const Color(0xFF53E88B),
                          splashColor: Colors.blue,
                          radius: 15,
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                screens.login, (route) => false);
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: DefaultText(
                                  text: 'LOGIN PAGE',
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
                    const Center(child: Image(image: AssetImage('assets/Pattern.png'))),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 27.h),
                      child:
                          const Image(image: AssetImage('assets/success.png')),
                    ),
                    Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: 20.w,vertical: 58.h,
                      ),
                      child: Text('Password reset succesful',style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.w, vertical: 50.h),
                      child: const Text(
                        "Congrats!",
                        style: TextStyle(
                            fontSize: 40,
                            color: Color(0xFF53E88B),
                            fontWeight: FontWeight.bold),
                      ),

                    ),

                  ],
                ),

              ),


            ],
          ),
        ],
      ),
    );
  }
}
