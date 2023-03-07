import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../constant/my_shared_keys.dart';
import '../../../../data/local/cache_helper.dart';
import '../../../../view/default_button.dart';
import '../../../../view/default_form_field.dart';
import '../../../../view/default_text.dart';
class SignupProcess extends StatefulWidget {
  const SignupProcess({Key? key}) : super(key: key);

  @override
  State<SignupProcess> createState() => _SignupProcessState();
}

class _SignupProcessState extends State<SignupProcess> {
  var fName = TextEditingController();
  var lName = TextEditingController();
  var mobile = TextEditingController();
  var formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xFFF9A84D),
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, screens.signup, (route) => false);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.h,),
                Text(
                  'Fill in your bio to get started',
                  style: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 3.h),
                Text(
                  'This data will be displayed in your account profile for security',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 2.h),
                DefaultFormField(
                  controller: fName,
                  keyboardType: TextInputType.name,
                  hintText: 'First Name',
                  height: 70,
                  radius: 15,
                  validator: (value) {
                    if (fName.text.isEmpty) {
                      return "First Name Can't Be Empty! ";
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
                SizedBox(height: 2.h),
                DefaultFormField(
                  controller: lName,
                  keyboardType: TextInputType.name,
                  hintText: 'Last Name',
                  validator: (text) {
                    if (lName.text.isEmpty) {
                      return "Last Name Can't Be Empty!";
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
                SizedBox(height: 2.h),
                DefaultFormField(
                  controller: mobile,
                  keyboardType: TextInputType.number,
                  hintText: 'Mobile Number',
                  validator: (text) {
                    if (mobile.text.isEmpty) {
                      return "Mobile Can't Be Empty!";
                    } else if (mobile.text.length < 11) {
                      return "Mobile Number Can't Be Less Than 11 numbers";
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
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Center(
                    child: DefaultMaterialButton(
                      height: 8.h,
                      width: 50.w,
                      backgroundColor: const Color(0xFF53E88B),
                      splashColor: Colors.blue,
                      radius: 15,
                      onPressed: () {
                        if(formKey.currentState!.validate()){

                        Navigator.of(context).pushNamedAndRemoveUntil(screens.payment, (route) => false);
                        }
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
      ),
    );
  }
}
