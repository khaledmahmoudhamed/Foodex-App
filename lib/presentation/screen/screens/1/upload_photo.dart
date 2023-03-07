import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:my_app/constant/screens.dart' as screens;
import 'package:sizer/sizer.dart';

import '../../../../view/default_button.dart';
import '../../../../view/default_outlined_button.dart';
import '../../../../view/default_text.dart';

class UploadPhoto extends StatefulWidget {
  const UploadPhoto({Key? key}) : super(key: key);

  @override
  State<UploadPhoto> createState() => _UploadPhotoState();
}

class _UploadPhotoState extends State<UploadPhoto> {

      late File imageFile;
      final imagePicker=ImagePicker();
      uploadPhoto() async{
        var pickedImage=await imagePicker.getImage(source:ImageSource.gallery );

      }
      tackPhoto()async{
        var tackedPhoto=await imagePicker.getImage(source: ImageSource.camera);
        if(tackedPhoto!=null){
        imageFile=File(tackedPhoto!.path);
        }
        else{

        }
      }

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
              // Padding(
              //   padding: const EdgeInsets.only(top: 40),
              //   child: CircleAvatar(
              //     backgroundColor: const Color(0xFFF9A84D),
              //     radius: 20,
              //     child: IconButton(
              //       onPressed: () {
              //         Navigator.pushNamedAndRemoveUntil(
              //             context, screens.payment, (route) => false);
              //       },
              //       icon: const Icon(
              //         Icons.arrow_back,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Upload Your Photo Profile',
                style: TextStyle(fontSize: 25.sp, color: const Color(0xFF09051C)),
              ),
              SizedBox(
                height: 2.h,
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
                height: 2.h,
              ),
              Container(
                color: Colors.white54,
                child: DefaultOutlinedButton(
                  height: 130,
                    width:double.infinity ,
                    borderColor: Colors.white70,
                    radius: 20,
                    onPressed: uploadPhoto,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.photo_album,
                          color: Color(0xFF4CAF50),
                          size: 50,
                        ),
                        Text(
                          'From Gallery',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold,
                          color: const Color(0xFF000000)),
                        ),
                      ],
                    )
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                color: Colors.white54,
                child: DefaultOutlinedButton(
                    height: 130,
                    width:double.infinity ,
                    borderColor: Colors.white70,
                    radius: 20,
                    onPressed: tackPhoto,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.photo_camera_sharp,
                          color: Color(0xFF8C466A),
                          size: 50,
                        ),
                        Text(
                          'Take Photo',
                          style: TextStyle(
                              fontSize: 14.sp, fontWeight: FontWeight.bold,
                              color: const Color(0xFF000000)),
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: Center(
                  child: DefaultMaterialButton(
                    height: 8.h,
                    width: 50.w,
                    backgroundColor: const Color(0xFF53E88B),
                    splashColor: Colors.blue,
                    radius: 15,
                    onPressed: () {
                      Navigator.of(context).pushNamedAndRemoveUntil(screens.profile, (route) => false);
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
