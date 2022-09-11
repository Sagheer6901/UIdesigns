import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uidesign/constants.dart';


class ChatInputField extends StatefulWidget {
  final username;
  var chatId;
  ChatInputField({Key? key, required this.username, required this.chatId})
      : super(key: key);

  @override
  State<ChatInputField> createState() => _ChatInputFieldState();
}

class _ChatInputFieldState extends State<ChatInputField> {
  @override
  Widget build(BuildContext context) {
    TextEditingController msg = TextEditingController();
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 32,
              color: const Color(0xFF087949).withOpacity(0.08),
            ),
          ]),
      child: SafeArea(
        child: Row(
          children: [
            SizedBox(width:10),
            Expanded(
              child: Container(
                padding:  EdgeInsets.symmetric(
                    horizontal: 10),
                height: 50,
                decoration: BoxDecoration(
                  // border: Border.all(width: ),
                  color: contentColor,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      color: secondaryColor.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(5, 7), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: msg,
                        decoration: InputDecoration(
                          hintText: "write a reply...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20,),
            Row(
              children: [
                Icon(
                  Icons.sentiment_satisfied_alt_outlined,
                  color: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.color
                      ?.withOpacity(0.64),
                ),
                const SizedBox(
                  width: 20,
                ),
                IconButton(
                  onPressed: () {

                  },
                  icon: Icon(
                    Icons.send,
                    color: Theme.of(context)
                        .textTheme
                        .bodyText1
                        ?.color
                        ?.withOpacity(0.64),
                  ),
                )

              ],
            )

          ],
        ),
      ),
    );
  }
}
