import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;
import '../../../../constant/my_shared_keys.dart';
import '../../../../data/local/cache_helper.dart';
import '../../../../view/default_button.dart';
import '../../../../view/default_form_field.dart';
import '../../../../view/default_outlined_button.dart';
import '../../../../view/default_text.dart';
Future<UserCredential> signInWithGoogle() async {
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  return await FirebaseAuth.instance.signInWithCredential(credential);
}

Future<UserCredential> signInWithFacebook() async {

  final LoginResult loginResult = await FacebookAuth.instance.login();

  final OAuthCredential facebookAuthCredential = FacebookAuthProvider.credential(loginResult.accessToken!.token);

  return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
}
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late UserCredential credential;
  var emailCont = TextEditingController(
      text: CacheHelper.getString(key: MySharedKeys.myEmail));
  var passwordCont = TextEditingController(
      text: CacheHelper.getString(key: MySharedKeys.myPassword));
  var formKey1 = GlobalKey<FormState>();
  bool isHidden = true;
  bool load=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: load,
        child: SingleChildScrollView(
          child: Form(
            key: formKey1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
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
                  style:
                      TextStyle(fontSize: 13.sp, color: const Color(0xFF09051C)),
                ),
                SizedBox(height: 6.h),
                Text(
                  'Login To Your Account',
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: const Color(0xFF09051C),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.h),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
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
                        padding: EdgeInsets.zero,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 2,
                              child: DefaultOutlinedButton(
                                height: 7.h,
                                onPressed: () async{
                                  setState(() {
                                    load=true;
                                  });
                                UserCredential credn=await signInWithFacebook();
                                print(credn);
                                },
                                radius: 15,
                                borderColor: Colors.black26,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Color(0xFF3C5A9A),
                                          radius: 15,
                                          child: Image(
                                              image: AssetImage(
                                                  'assets/download.png')),
                                        ),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Flexible(
                                          child: DefaultText(
                                            text: 'Facebook',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Expanded(
                              flex: 2,
                              child: DefaultOutlinedButton(
                                height: 7.h,
                                onPressed: () async{
                                  UserCredential cred=await signInWithGoogle();
                                  print(cred);
                                 // Navigator.of(context).pushNamedAndRemoveUntil(screens.verification, (route) => false);
                                },
                                
                                
                                radius: 15,
                                borderColor: Colors.black26,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        const CircleAvatar(
                                          backgroundColor: Color(0xFF3C5A9A),
                                          radius: 15,
                                          child: Image(
                                              image:
                                                  AssetImage('assets/img.png')),
                                        ),
                                        SizedBox(
                                          width: 2.w,
                                        ),
                                        Flexible(
                                          child: DefaultText(
                                            text: 'Google',
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamedAndRemoveUntil(screens.forgetPassword, (route) => false);
                        },
                        child: Text(
                          'Forgot Your Password?',
                          style: TextStyle(
                              color: const Color(0xFF53E88B), fontSize: 12.sp),
                        ),
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                    Row(
                      children: [
                        Text("Don't Have An Account? ",style: TextStyle(fontSize: 18.sp,color: Colors.black),),
                        TextButton(onPressed: () async{
                            Navigator.pushNamedAndRemoveUntil(context, screens.signup, (route) => false);
                        }, child: Text("Sign In",style: TextStyle(fontSize: 20.sp,color: const Color(0xFF53E88B)),))
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
                                try {
                                  credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
                                    email:emailCont.text,
                                    password: passwordCont.text,
                                  );
                                  if (kDebugMode) {
                                    print(credential);
                                  }
                                  setState(() {
                                    load=false;
                                  });
                                } on FirebaseAuthException catch (e) {
                                  if (e.code == 'weak-password') {
                                    if (kDebugMode) {
                                      print('The password provided is too weak.');
                                    }
                                  } else if (e.code == 'email-already-in-use') {
                                    if (kDebugMode) {
                                      print('The account already exists for that email.');
                                    }
                                  }
                                }
                                catch (e) {

                                  if (kDebugMode) {
                                    print(e);
                                  }
                                  if (kDebugMode) {
                                    print(credential.user?.emailVerified);
                                  }
                                  if(credential.user!.emailVerified==false){
                                    User? user=FirebaseAuth.instance.currentUser;
                                    await user!.sendEmailVerification();
                                  }
                                }
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    screens.home, (route) => false);
                                setState(() {
                                  load=true;
                                });

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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
