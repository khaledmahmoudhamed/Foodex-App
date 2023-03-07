import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

class RateFoodScreen extends StatefulWidget {
  const RateFoodScreen({Key? key}) : super(key: key);

  @override
  State<RateFoodScreen> createState() => _RateFoodScreenState();
}

class _RateFoodScreenState extends State<RateFoodScreen> {
  var formKey = GlobalKey<FormState>();
  var controller = TextEditingController();
  // bool isClicked = true;
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

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
                  padding: EdgeInsets.only(top: 160),
                  child: Center(
                    child: ClipOval(
                      clipBehavior: Clip.hardEdge,
                      // xd image
                      // child: Image.network('https://lh3.googleusercontent.com/a/AEdFTp7YJH6k8dW_ZjwJTPwlG8uP1OWaKxChM9KEB42j=s360-p-rw-no',height: 20.h,)
                      child: Image(image: AssetImage('assets/rateFood.png')),
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
              height: 2.h,
            ),
            Text(
              'Please rate your Food',
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
            //           setState(() {
            //               isClicked=!isClicked;
            //           });
            //         },
            //         icon:Icon(
            //             color:Colors.yellow[700],
            //             isClicked?Icons.star_border_outlined:Icons.star)
            //     ),
            //     SizedBox(
            //       width: 3.w,
            //     ),
            //     IconButton(
            //         onPressed: () {
            //         setState(() {
            //           isClicked=!isClicked;
            //         });
            //     },
            //       icon:  Icon(
            //         isClicked?Icons.star_border_outlined:Icons.star,
            //       color:Colors.yellow[700]!,
            //     )),
            //     SizedBox(
            //       width: 3.w,
            //     ),
            //     IconButton(
            //         onPressed: () {
            //           setState(() {
            //           isClicked=!isClicked;
            //           });
            //         },
            //         icon: Icon(
            //       isClicked?Icons.star_border_outlined:Icons.star,
            //       color:Colors.yellow[700]!,
            //     )),
            //     SizedBox(
            //       width: 3.w,
            //     ),
            //     IconButton(
            //         onPressed: () {
            //           setState(() {
            //           isClicked=!isClicked;
            //           });
            //         }, icon: Icon(
            //       isClicked?Icons.star_border_outlined:Icons.star,
            //       color:Colors.yellow[700]!,
            //     )),
            //     SizedBox(
            //       width: 3.w,
            //     ),
            //     IconButton(
            //         onPressed: () {
            //           setState(() {
            //           isClicked=!isClicked;
            //           });
            //           },
            //         icon: Icon(
            //           isClicked?Icons.star_border_outlined:Icons.star,
            //           color:Colors.yellow[700]!,
            //         )
            //     ),
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
                controller: controller,
                keyboardType: TextInputType.text,
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
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                      onPressed: () async {
                        if (formKey.currentState!.validate()) {
                          String message;
                          try {
                            final collection = FirebaseFirestore.instance
                                .collection('feedback');
                            await collection.doc().set({
                              'timestamp': FieldValue.serverTimestamp(),
                              'feedback': controller.text,
                            });

                            message = 'Feedback sent successfully';
                          } catch (_) {
                            message = 'Error when sending feedback';
                          }
                          ScaffoldMessenger.of(context)
                              .showSnackBar(SnackBar(content: Text(message)));
                          Navigator.pop(context);
                        }
                      },
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
                          context, screens.rateRestaurant, (route) => false);
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
