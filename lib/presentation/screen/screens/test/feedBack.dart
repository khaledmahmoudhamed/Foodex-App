import 'package:flutter/material.dart';

class FeedBackScreen extends StatefulWidget {
  const FeedBackScreen({Key? key}) : super(key: key);

  @override
  State<FeedBackScreen> createState() => _FeedBackScreenState();
}

class _FeedBackScreenState extends State<FeedBackScreen> {

  bool isClicked=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
              5,
              (index) => Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: IconButton(
                      onPressed: () {
                      isClicked=!isClicked;
                      }, icon:  Icon(
                      color: Colors.yellow[700],
                      isClicked?Icons.star_border_outlined:Icons.star
                  )
                  ),
                ),
              )
          )
      ),
    );
  }
}
