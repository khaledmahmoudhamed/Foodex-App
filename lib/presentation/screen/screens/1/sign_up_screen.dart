
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart'as screens;

import '../../../../constant/my_shared_keys.dart';
import '../../../../data/local/cache_helper.dart';
import '../../../../view/default_button.dart';
import '../../../../view/default_form_field.dart';
import '../../../../view/default_text.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var emailCont = TextEditingController(
    text: CacheHelper.getString(key: MySharedKeys.myEmail)
  );
  var passCont = TextEditingController(
    text: CacheHelper.getString(key: MySharedKeys.myPassword)
  );
  var nameCont = TextEditingController();
  bool check1 = false;
  bool check2 = false;
  bool isHidden = true;
  IconData suffixIcon = Icons.remove_red_eye;
  var formKey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey2,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 100, left: 500.sp)),
              const Image(image: AssetImage('assets/Logo.png')),
              Text(
                'FoodNinja',
                style: TextStyle(
                  color: const Color(0xFF53E88B),
                  fontSize: 40.sp,
                ),
              ),
              Text(
                'Deliver Favorite Food',
                style: TextStyle(fontSize: 13.sp, color: const Color(0xFF09051C)),
              ),
              SizedBox(height: 6.h),
              Text(
                'Sign Up For Free ',
                style: TextStyle(
                    fontSize: 20.sp,
                    color: const Color(0xFF09051C),
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    DefaultFormField(
                      controller: nameCont,
                      keyboardType: TextInputType.name,
                      hintText: 'Anamwp . . |',
                      height: 70,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Color(0xFF53E88B),
                        size: 40,
                      ),
                      radius: 15,
                      validator: (value) {
                        if (nameCont.text.isEmpty) {
                          return "Name Can't Be Empty! ";
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
                    DefaultFormField(
                      controller: emailCont,
                      keyboardType: TextInputType.emailAddress,
                      hintText: 'Email',
                      height: 70,
                      prefixIcon: const Icon(
                        Icons.email,
                        color: Color(0xFF53E88B),
                        size: 40,
                      ),
                      radius: 15,
                      validator: (value) {
                        if (emailCont.text.isEmpty) {
                          return "Email Can't Be Empty! ";
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
                    DefaultFormField(
                      controller: passCont,
                      keyboardType: TextInputType.visiblePassword,
                      hintText: 'Password',
                      height: 70,
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color(0xFF53E88B),
                        size: 40,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            if (isHidden == true) {
                              suffixIcon = Icons.remove_red_eye_outlined;
                            } else {
                              suffixIcon = suffixIcon;
                            }
                            isHidden = !isHidden;
                          });
                        },
                        icon: Icon(
                          suffixIcon,
                        ),
                      ),
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
                    Row(
                      children: [
                        Checkbox(
                            value: check1,
                            onChanged: (value) {
                              setState(() {
                                if(check1==value){
                                  value=nameCont.text as bool?;
                                  value=emailCont.text as bool?;
                                  value=passCont.text as bool?;
                                }
                                check1 = value!;
                              });
                            }),
                        Text(
                          'Keep Me Signed In',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                            value: check2,
                            onChanged: (value) {
                              setState(() {

                                check2 = value!;
                              });
                            }),
                        Text(
                          'Email Me About Special Pricing',
                          style: TextStyle(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.h),
                      child: Center(
                        child: DefaultMaterialButton(
                          height: 8.h,
                          width: 50.w,
                          backgroundColor: const Color(0xFF53E88B),
                          splashColor: Colors.blue,
                          radius: 15,
                          onPressed: () {
                            if (formKey2.currentState!.validate()) {
                              setState(() {
                                Fluttertoast.showToast(
                                    msg: "Account Created Successfully",
                                    toastLength: Toast.LENGTH_LONG,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 3,
                                    backgroundColor: Colors.blue,
                                    textColor: Colors.white,
                                    fontSize: 16.sp);
                              });
                              CacheHelper.putString(
                                  key: MySharedKeys.myEmail,
                                  value: emailCont.text);
                              CacheHelper.putString(
                                  key: MySharedKeys.myPassword,
                                  value: passCont.text);
                               Navigator.of(context).pushNamedAndRemoveUntil(screens.signupProcess, (route) => false);
                              // Navigator.of(context).pushNamedAndRemoveUntil(
                              // //  screens.settingsScreen,
                              //   (route) => false,
                              // );
                            }
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Flexible(
                                child: DefaultText(
                                  text: 'Create Account',
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
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, screens.login, (route) => false);
                        },
                        child: Text(
                          'already have an account?',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF53E88B)
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
