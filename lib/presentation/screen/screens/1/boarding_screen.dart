import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:my_app/constant/screens.dart'as screens;
import 'package:sizer/sizer.dart';

import '../../../../view/build_images.dart';
class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Center(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
                title: 'FoodNinja',
                body: 'Deliver Favorite Food',
                image: const BuildImages(image: 'assets/Logo.png'),
                decoration: getDecoration(34.sp,const Color(0xFF53E88B),
                    EdgeInsets.zero,),
            ),
            PageViewModel(
                title: 'Find your  Comfort Food here',
                body: 'Here You Can find a chef or dish for every taste and color. Enjoy!',
                image: const Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: BuildImages(image: 'assets/onBoarding2.png'),
                ),
                decoration: getDecoration(25.sp,Colors.black,
                    const EdgeInsets.only(top: 5),),

      ),
            PageViewModel(
                title: 'Food Ninja is Where Your Comfort Food Lives',
                body: 'Enjoy a fast and smooth food delivery at your doorstep',
                image: const Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: BuildImages(image: 'assets/onBoarding3.png'),
                ),
              decoration: getDecoration(20.sp,Colors.black,const EdgeInsets.only(top: 5),
                  ),

            ),

          ],
          next: const Icon(Icons.arrow_forward),
          done: Text('Done',style: TextStyle(fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),
          ),
          onDone: (){
            Navigator.pushNamedAndRemoveUntil(context, screens.login, (route) => false);

          },
          showSkipButton: true,
          skip:  Text('Skip',style: TextStyle(fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.normal),),
        ),
      ),
    );
  }
  PageDecoration getDecoration(double fontSize,Color color,EdgeInsets padding){
    return  PageDecoration(
        titleTextStyle:TextStyle(fontStyle: FontStyle.normal,fontWeight:FontWeight.bold,
           color: color,
        fontSize: fontSize),
        bodyTextStyle: const TextStyle(fontSize: 20,fontStyle: FontStyle.normal,
        color: Colors.black,),
        imagePadding: EdgeInsets.zero,
        titlePadding: const EdgeInsets.only(left: 5,right: 5),
        bodyPadding: const EdgeInsets.only(left: 15,right: 15,top: 5),
    );
  }
}
