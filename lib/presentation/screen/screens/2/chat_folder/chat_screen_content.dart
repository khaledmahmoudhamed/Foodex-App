import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChatScreenContent extends StatelessWidget {
  const ChatScreenContent({Key? key, this.text, this.sender, required this.isMe}) : super(key: key);

  final String? text;
  final String? sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment:isMe? CrossAxisAlignment.end:CrossAxisAlignment.start,
        children: [
         Text('$sender',style:  TextStyle(color: Colors.yellow[900],fontSize: 12),
          ),
          Material(
            color: isMe? Colors.blue : Colors.white,
            borderRadius:isMe? const BorderRadius.only(
              topLeft: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ):const BorderRadius.only(
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text('$text ',style: TextStyle(
                  fontSize: 16.sp,color:isMe? Colors.white:Colors.black45
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
