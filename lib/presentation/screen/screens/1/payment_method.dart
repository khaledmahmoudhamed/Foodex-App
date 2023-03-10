import 'package:flutter/material.dart';
import 'package:my_app/constant/screens.dart' as screens;
import 'package:sizer/sizer.dart';

import '../../../../view/default_button.dart';
import '../../../../view/default_outlined_button.dart';
import '../../../../view/default_text.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {

  var forKey4=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only( left: 20, right: 20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: CircleAvatar(
                  backgroundColor: const Color(0xFFF9A84D),
                  radius: 20,
                  child: IconButton(
                    onPressed: () {
                     Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'Payment Method',
                style: TextStyle(fontSize: 25.sp, color: const Color(0xFF09051C)),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: TextStyle(fontSize: 12.sp, color: const Color(0xFF000000)),
              ),
              SizedBox(
                height: 3.h,
              ),
              DefaultOutlinedButton(
                  borderColor: Colors.black26,
                  radius: 15,
                  height: 75,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.paypal,
                            color: Color(0xFF253B80),
                          ),
                          Text(
                            'Pay',
                            style: TextStyle(
                                color: Color(0xFF253B80),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                            fontStyle: FontStyle.italic),
                          ),
                          Text(
                            'Pal',
                            style: TextStyle(
                                color: Color(0xFF179BD7),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                            fontStyle: FontStyle.italic),
                          ),
                        ],
                      )
                    ],
                  )
              ),
              SizedBox(height: 2.h,),
              DefaultOutlinedButton(
                  borderColor: Colors.black26,
                  radius: 15,
                  height: 75,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'VISA',
                        style: TextStyle(
                            color: Color(0xFF2566AF),
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                        fontStyle: FontStyle.italic),
                      )
                    ],
                  )
              ),
              SizedBox(height: 2.h,),
              DefaultOutlinedButton(
                  borderColor: Colors.black26,
                  radius: 15,
                  height: 75,
                  onPressed: () {},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Pa',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontStyle: FontStyle.italic),
                          ),
                          Image(image: AssetImage('assets/true.png'),),
                          Text(
                            'oneer',
                            style: TextStyle(
                                color: Color(0xFF000000),
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                            fontStyle: FontStyle.italic),
                          ),
                        ],
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
                      // setState(() {
                      //   Fluttertoast.showToast(
                      //       msg: "Payment Method Completed Successfully",
                      //       toastLength: Toast.LENGTH_LONG,
                      //       gravity: ToastGravity.BOTTOM,
                      //       timeInSecForIosWeb: 3,
                      //       backgroundColor: Colors.blue,
                      //       textColor: Colors.white,
                      //       fontSize: 16.sp);
                      // });
                      Navigator.pushNamedAndRemoveUntil(context, screens.editPayment, (route) => false);
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
        ),
      ),
    );
  }
}
