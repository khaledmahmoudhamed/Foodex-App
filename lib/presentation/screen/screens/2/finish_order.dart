import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;

class FinishOrder extends StatefulWidget {
  const FinishOrder({Key? key}) : super(key: key);

  @override
  State<FinishOrder> createState() => _FinishOrderState();
}

class _FinishOrderState extends State<FinishOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                  padding: EdgeInsets.only(top: 200),
                  child: Center(
                    child: ClipOval(
                      clipBehavior: Clip.hardEdge,
                      // xd image
                      // child: Image.network('https://lh3.googleusercontent.com/a/AEdFTp7YJH6k8dW_ZjwJTPwlG8uP1OWaKxChM9KEB42j=s360-p-rw-no',height: 20.h,)
                      child: Image(image: AssetImage('assets/finishOrder.png')),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 3.h,
            ),
            const Text(
              '      Thank You! \n Order Completed',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              'Please rate your last Driver',
              style: TextStyle(fontSize: 14.sp),
            ),
            SizedBox(
              height: 3.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: const Icon(Icons.star)),
                SizedBox(
                  width: 3.w,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
                SizedBox(
                  width: 3.w,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
                SizedBox(
                  width: 3.w,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
                SizedBox(
                  width: 3.w,
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.star)),
              ],
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(20),
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
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ElevatedButton(
                      onPressed: () {},
                      clipBehavior: Clip.none,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 25.w),
                        backgroundColor: const Color(0xFF53E88B),
                      ),
                      child: const Text(
                        'Submit',
                        style: TextStyle(fontSize: 14),
                      )),
                ),
                SizedBox(width: 13.w),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context,screens.rateFood , (route) => false);
                    },
                    child:  Text(
                      'Skip',
                      style: TextStyle(color: const Color(0xFF53E88B),
                      fontSize:18.sp ),
                    ))
              ],
            ),
            // SizedBox(height: 1.h,),
          ],
        ),
      ),
    );
  }
}
