import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

class RateRestaurant extends StatefulWidget {
  const RateRestaurant({Key? key}) : super(key: key);

  @override
  State<RateRestaurant> createState() => _RateRestaurantState();
}

class _RateRestaurantState extends State<RateRestaurant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: const [
                Image(
                  image: AssetImage(
                    'assets/finishOrderImage.png',
                  ),
                  width: double.infinity,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 140),
                  child: Center(
                    child: ClipOval(
                      clipBehavior: Clip.hardEdge,
                      // xd image
                      // child: Image.network('https://lh3.googleusercontent.com/a/AEdFTp7YJH6k8dW_ZjwJTPwlG8uP1OWaKxChM9KEB42j=s360-p-rw-no',height: 20.h,)
                      child: Image(
                          image: AssetImage('assets/rateRestaurantImage.png')),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            const Text(
              '      Thank You!\nEnjoy Your Meal',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Please rate your Restaurant',
              style: TextStyle(fontSize: 14.sp),
            ),
            SizedBox(
              height: 2.h,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     IconButton(
            //         onPressed: () {
            //           setState(() {});
            //         },
            //         icon: const Icon(Icons.star)),
            //     SizedBox(
            //       width: 3.w,
            //     ),
            //     IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
            //     SizedBox(
            //       width: 3.w,
            //     ),
            //     IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
            //     SizedBox(
            //       width: 3.w,
            //     ),
            //     IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
            //     SizedBox(
            //       width: 3.w,
            //     ),
            //     IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
            //   ],
            // ),
            RatingBar.builder(
              itemCount: 5,
              initialRating: 3,
              minRating: 1,
              itemPadding: const EdgeInsets.only(left: 10,right: 10,),
              itemBuilder: (BuildContext context, int index) =>
              const Icon(Icons.star,color: Colors.amber,),
              onRatingUpdate: (double value) {},
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.note_alt_outlined,
                      color: Color(0xFF53E88B),
                    ),
                    hintText: 'Leave feedback',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20,),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(255, 45),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        backgroundColor: const Color(0xFF53E88B),
                      ),
                      child:  Text(
                        'Submit',
                        style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(width: 13.w),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, screens.voucherPromo, (route) => false);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: const Color(0xFF53E88B), fontSize: 18.sp),
                    )),
                SizedBox(
                  height: 3.h,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
