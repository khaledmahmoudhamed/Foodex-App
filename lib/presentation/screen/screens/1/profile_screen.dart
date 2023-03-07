import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

import '../../../../view/default_button.dart';
import '../../../../view/default_text.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only( left: 20, right: 20),
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
                          context, screens.upload, (route) => false);
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
                'Upload Your Photo Profile',
                style: TextStyle(
                    fontSize: 25.sp,
                    color: const Color(0xFF09051C),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                'This data will be displayed in your account profile for security',
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF000000),
                ),
              ),
              SizedBox(
                height: 9.h,
              ),
              InkWell(
                onTap: (){},
                child: Container(
                  //color: Colors.green,
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    // color: Colors.green,
                    image:
                        DecorationImage(image: AssetImage('assets/person2.png')),
                  ),
                  //child: const Image(image: AssetImage('assets/person2.png',),)
                ),
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
                      Navigator.of(context).pushNamedAndRemoveUntil(screens.profileTwo, (route) => false);
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
