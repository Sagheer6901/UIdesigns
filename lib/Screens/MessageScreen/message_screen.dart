import 'package:flutter/material.dart';
import 'package:uidesign/Screens/MessageScreen/chat_card.dart';
import 'package:uidesign/Screens/MessageScreen/message_inputfield.dart';
import 'package:uidesign/Widgets/custom_app_bar.dart';
import 'package:uidesign/constants.dart';

class MessageScreen extends StatelessWidget {
  MessageScreen({Key? key}) : super(key: key);
  var h,w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: contentColor,
      appBar: CustomAppBar.getAppBar(
        context: context,
        backgroundColor: primaryColor,
        height: MediaQuery.of(context).size.height * 0.4,
        onActionsTapped: () {},
        showBackButton: true,
        children: [
          const Text(
            'Hi, there!',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(child: SizedBox()),
                      Expanded(flex: 3,child: SenderChatCard("hello hello hello fasfafdf afad fsdfa f afsd fa faf afsd fa fasd fa fasdf as fa fasf f a fsd")),
                    ],
                  ),
                  SizedBox(height: h*0.06),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(flex: 3,child: RecieverChatCard("hello hello hello fasfafdf afad fsdfa f afsd fa faf afsd fa fasd fa fasdf as fa fasf f a fsd")),
                      Expanded(child: SizedBox()),

                    ],
                  ),
                ],
              ),
            ),
          ),
          ChatInputField(
            username: "sagheer",
            chatId: 1,
          )
        ],
      ),
    );
  }
}
