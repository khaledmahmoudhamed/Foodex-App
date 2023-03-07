import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

import '../../../../constant/my_shared_keys.dart';
import '../../../../data/local/cache_helper.dart';
import '../../../../view/default_button.dart';
import '../../../../view/default_form_field.dart';
import '../../../../view/default_text.dart';

class TestLoginScreen extends StatefulWidget {
  const TestLoginScreen({Key? key}) : super(key: key);

  @override
  State<TestLoginScreen> createState() => _TestLoginScreenState();
}

class _TestLoginScreenState extends State<TestLoginScreen> {

 var emailCont=TextEditingController(
   text: CacheHelper.getString(key: MySharedKeys.myEmail)
 );
 var passwordCont=TextEditingController(
   text: CacheHelper.getString(key: MySharedKeys.myPassword)
 );
 bool isHidden=true;
 var formKey1=GlobalKey <FormState>();
 var formKey=GlobalKey<FormState>();


 static Future<User?> loginUsingEmailPassword(
 {
   required String email,
   required String password,
   required BuildContext context}) async{
   FirebaseAuth auth=FirebaseAuth.instance;
   User? user;
   try{
     UserCredential userCredential=await auth.signInWithEmailAndPassword(email: email, password: password);
    user=userCredential.user;
   }on FirebaseException catch(e){
     if(e.code=="user-not-found"){
       if (kDebugMode) {
         print("No user found for that email");
       }
     }
   }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20,right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: DefaultFormField(
                radius: 15,
                controller: emailCont,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
                textColor: Colors.black,
                validator: (text) {
                  if (emailCont.text.isEmpty) {
                    return "Email can't be empty";
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
                  borderRadius: BorderRadius.zero,
                ),
                inputErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 1.h),
              child: DefaultFormField(
                radius: 15,
                controller: passwordCont,
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                obscureText: isHidden,
                textColor: Colors.black,
                validator: (text) {
                  if (passwordCont.text.isEmpty) {
                    return "Password can't be empty";
                  } else if (passwordCont.text.length < 6) {
                    return "Password can't be less than 6 chars";
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
                  borderRadius: BorderRadius.zero,
                ),
                inputErrorBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Text(
              'Or Continue With',
              style: TextStyle(
                  fontSize: 12.sp,
                  color: const Color(0xFF09051C),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 4.h),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 3.h),
              child: Center(
                child: DefaultMaterialButton(
                  height: 8.h,
                  width: 50.w,
                  backgroundColor: const Color(0xFF53E88B),
                  splashColor: Colors.blue,
                  radius: 15,
                  onPressed: () async{
                    if (formKey1.currentState!.validate()) {
                      setState(() {
                        Fluttertoast.showToast(
                            msg: "Login Succeeded",
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
                          value: passwordCont.text);
                    }

                    User? user=await loginUsingEmailPassword(email: emailCont.text, password: passwordCont.text, context: context);
                    if (kDebugMode) {
                      print(user);
                    }
                    if(user !=null){
                      if (kDebugMode) {
                        print("welcome $user");
                      }
                    }
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: DefaultText(
                          text: 'Login',
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
    );
  }
}
