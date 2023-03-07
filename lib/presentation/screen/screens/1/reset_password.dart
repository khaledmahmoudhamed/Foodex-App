import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../constant/my_shared_keys.dart';
import '../../../../data/local/cache_helper.dart';
import '../../../../view/default_button.dart';
import '../../../../view/default_form_field.dart';
import '../../../../view/default_text.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  var passCont = TextEditingController(
      text: CacheHelper.getString(key: MySharedKeys.myPassword)
  );
  bool check1 = false;
  bool check2 = false;
  bool isHidden = true;
  IconData suffixIcon = Icons.remove_red_eye;
  var formKey= GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Form(
        key: formKey,
        child: ListView(
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
                            context, screens.forgetPassword, (route) => false);
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
                    '''Reset your password here''',
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
                  DefaultFormField(
                    controller: passCont,
                    keyboardType: TextInputType.visiblePassword,
                    hintText: 'New Password',
                    height: 70,
                    obscureText: true,
                    radius: 15,
                    validator: (value) {
                      if (passCont.text.isEmpty) {
                        return "Password Can't Be Empty! ";
                      } else if (passCont.text.length < 6) {
                        return "Password Can't Be Less Than 6 Chars";
                      }
                      return null;
                    },
                    inputEnabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.black12, width: 2),
                    ),
                    inputFocusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.blue, width: 2)),
                    inputErrorBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        borderSide: BorderSide(color: Colors.red, width: 2)),
                  ),
                  SizedBox(height: 3.h,),
                   DefaultFormField(
                     controller: passCont,
                    hintText: "Confirm Password",
                    keyboardType: TextInputType.visiblePassword,
                    prefixIcon:  const Icon(
                      Icons.lock,
                      color: Color(0xFF53E88B),
                      size: 40,
                    ),
                    suffixIcon: IconButton(color:  Colors.black, onPressed: () {
                      setState(() {
                        if (isHidden == true) {
                          suffixIcon = Icons.remove_red_eye_outlined;
                        } else {
                          suffixIcon = suffixIcon;
                        }
                        isHidden = !isHidden;
                      });
                    }, icon:  Icon(suffixIcon,),),
                    obscureText: isHidden,
                    radius: 15,
                    validator: (value) {
                      if (passCont.text.isEmpty) {
                        return "Password Can't Be Empty! ";
                      } else if (passCont.text.length < 6) {
                        return "Password Can't Be Less Than 6 Chars";
                      }
                      return null;
                    },
                    inputEnabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black26,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    inputFocusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    inputErrorBorder:  const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),

                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.h),
                    child: Center(
                      child: DefaultMaterialButton(
                        height: 8.h,
                        width: 50.w,
                        backgroundColor: const Color(0xFF53E88B),
                        splashColor: Colors.blue,
                        radius: 15,
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            setState(() {
                              Fluttertoast.showToast(
                                  msg: "Password Rested Successfully",
                                  toastLength: Toast.LENGTH_LONG,
                                  gravity: ToastGravity.BOTTOM,
                                  timeInSecForIosWeb: 3,
                                  backgroundColor: Colors.blue,
                                  textColor: Colors.white,
                                  fontSize: 16.sp);
                            });

                            CacheHelper.putString(
                                key: MySharedKeys.myPassword,
                                value: passCont.text);
                            Navigator.of(context).pushNamedAndRemoveUntil(screens.signupProcess, (route) => false);

                          }
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
      ),
    );
  }
}
