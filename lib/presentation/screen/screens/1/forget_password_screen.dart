import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../view/default_button.dart';
import '../../../../view/default_text.dart';
import 'package:my_app/presentation/screen/screens/1/log_in_screen.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0xFFF9A84D),
                  radius: 20,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, screens.verification, (route) => false);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  ''' Forgot password? ''',
                  style: TextStyle(
                      fontSize: 25.sp,
                      color: const Color(0xFF09051C),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  'Select which contact details should we use to reset your password',
                  style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xFF000000),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 6.h,
                ),
                InkWell(
                  onTap: (){

                  },
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child:const ListTile(
                      leading:Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.sms_sharp,color: Color(0xFF53E88B),),
                      ) ,
                      title: Text("Via sms:"),
                      subtitle: Text("01202715677"),
                    ),


                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child:  const ListTile(
                      leading:Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.email,color: Color(0xFF53E88B),),
                      ) ,
                      title: Text("Via email:"),
                      subtitle: Text("email"),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Center(
                    child: DefaultMaterialButton(
                      height: 8.h,
                      width: 50.w,
                      backgroundColor: const Color(0xFF53E88B),
                      splashColor: Colors.blue,
                      radius: 15,
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(screens.resetPassword, (route) => false);
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Flexible(
                            child: DefaultText(
                              text: 'Next',
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
          )
        ],
      ),
    );
  }
}
