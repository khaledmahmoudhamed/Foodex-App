import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sizer/sizer.dart';
import 'package:my_app/constant/screens.dart' as screens;
import 'chat_screen_content.dart';

late User signedInUser;
final _fireStore = FirebaseFirestore.instance;
Future<void> saveUser(GoogleSignInAccount account) async {
  FirebaseFirestore.instance.collection('messages').doc(account.email).set({
    'email': account.email,
    'name': account.displayName,
    'photo': account.photoUrl
  });
}

class ChatDetails extends StatefulWidget {
  static const String screenRoute = 'chat_screen';

  const ChatDetails({Key? key}) : super(key: key);

  @override
  _ChatDetailsState createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  final _auth = FirebaseAuth.instance;
  String? messageText;
  final messageController = TextEditingController();
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        signedInUser = user;
        if (kDebugMode) {
          print(signedInUser.email);
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, screens.messages, (route) => false);
               //  Navigator.pushNamedAndRemoveUntil(context, screens.finishOrder, (route) => false);

              }, icon: const Icon(Icons.arrow_back_ios)),
              IconButton(onPressed: (){
                Navigator.pushNamedAndRemoveUntil(context, screens.callRinging, (route) => false);
              }, icon: const Icon(Icons.video_call)),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, screens.signupProcess, (route) => false);
                  },
                  icon: const Icon(Icons.payment)),
            ],
          )),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: StreamBuilder<QuerySnapshot>(
                builder: (context, snapshot) {
                  List<ChatScreenContent> messageWidgets = [];
                  if (!snapshot.hasData) {}
                  final messages = snapshot.data!.docs.reversed;
                  for (var message in messages) {
                    final messageText = message.get('text');
                    final messageSender = message.get('sender');
                    final currentUser = signedInUser.email;
                    final messageWidget = ChatScreenContent(
                      sender: messageSender,
                      text: messageText,
                      isMe: currentUser == messageSender,
                    );
                    messageWidgets.add(messageWidget);
                  }
                  return ListView(
                    reverse: true,
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    children: messageWidgets,
                  );
                },
                stream: _fireStore
                    .collection('messages')
                    .orderBy('time')
                    .snapshots(),
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Colors.orange,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageController,
                      onChanged: (value) {
                        messageText = value;
                      },
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: 'Write your message here...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      messageController.clear();
                      _fireStore.collection('messages').add({
                        'text': messageText,
                        'sender': signedInUser.email,
                        'time': FieldValue.serverTimestamp()
                      });
                    },
                    child: Text(
                      'send',
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
