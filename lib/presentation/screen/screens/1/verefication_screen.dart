import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../view/default_button.dart';
import '../../../../view/default_text.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xFFF9A84D),
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, screens.login, (route) => false);
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
                    '''Enter 4-digit Verification code''',
                    style: TextStyle(
                        fontSize: 25.sp,
                        color: const Color(0xFF09051C),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'Code send to +6282045**** . This code will expired in 01:30',
                    style: TextStyle(
                        fontSize: 12.sp,
                        color: const Color(0xFF000000),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            decoration: const InputDecoration(hintText: '0'),
                            onSaved: (pin1){},
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              //FilteringTextInputFormatter('0', allow: true)
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            decoration: const InputDecoration(hintText: '0'),
                            onSaved: (pint2){},
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              //FilteringTextInputFormatter('0', allow: true)
                            ],
                          ),
                        ),   SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            decoration: const InputDecoration(hintText: '0'),
                            onSaved: (pint3){},
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                             // FilteringTextInputFormatter('0', allow: true)
                            ],
                          ),
                        ),   SizedBox(
                          height: 68,
                          width: 64,
                          child: TextFormField(
                            decoration: const InputDecoration(hintText: '0'),
                            onSaved: (pint4){},
                            onChanged: (value){
                              if(value.length==1){
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                             // FilteringTextInputFormatter('0', allow: true)
                            ],
                          ),
                        ),
                      ],
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.h),
                    child: Center(
                      child: DefaultMaterialButton(
                        height: 8.h,
                        width: 50.w,
                        backgroundColor: const Color(0xFF53E88B),
                        splashColor: Colors.blue,
                        radius: 15,
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(screens.success, (route) => false);
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
