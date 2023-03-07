import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;


class Messages extends StatefulWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 90),
                    child: Text(
                      'Chat',
                      style: TextStyle(
                        color: const Color(0xFF09051C),
                        fontWeight: FontWeight.bold,
                        fontSize: 25.sp,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context, screens.home, (route) => false);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 30,
                        color: Color(0xFFF9A84D),
                      ),
                    ),
                  ),
                ],
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.only(top: 40, left: 2),
                  child: Image(image: AssetImage('assets/Group.png')),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: InkWell(
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(context, screens.chatDetails, (route) => false);
              },
              child: Container(
                height: 60.sp,
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: const Image(
                    image: AssetImage('assets/1.png'),
                    alignment: Alignment.centerLeft,
                  ),
                  title: Text(
                    'Anamwp',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: const Color(0xFF09051C),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Your Order Just Arrived!',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  trailing: Text('${DateTime.now().hour}'),

                ),
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: InkWell(
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(context, screens.chatDetails, (route) => false);
              },
              child: Container(
                height: 60.sp,
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: const Image(
                    image: AssetImage('assets/3.png'),
                    alignment: Alignment.centerLeft,
                  ),
                  title: Text(
                    'Guy Hawkins',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: const Color(0xFF09051C),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Your Order Just Arrived!',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  trailing: Text('${DateTime.now().hour}'),

                ),
              ),
            ),
          ),
          SizedBox(height: 2.h,),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: InkWell(
              onTap: (){
                Navigator.pushNamedAndRemoveUntil(context, screens.chatDetails, (route) => false);
              },
              child: Container(
                height: 60.sp,
                alignment: Alignment.centerLeft,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  color: Colors.white,
                ),
                child: ListTile(
                  leading: const Image(
                    image: AssetImage('assets/2.png'),
                    alignment: Alignment.centerLeft,
                  ),
                  title: Text(
                    'Leslie Alexander',
                    style: TextStyle(
                        fontSize: 15.sp,
                        color: const Color(0xFF09051C),
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Your Order Just Arrived!',
                    style: TextStyle(fontSize: 14.sp),
                  ),
                  trailing: Text('${DateTime.now().hour}'),

                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
