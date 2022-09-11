import 'package:flutter/material.dart';
import 'package:uidesign/constants.dart';

class SenderChatCard extends StatelessWidget {
  var message;

  SenderChatCard(this.message);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.only(topLeft:Radius.circular(5),bottomRight: Radius.circular(5)),
        boxShadow: [
          BoxShadow(
            color: secondaryColor.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(5, 7), // changes position of shadow
          ),
        ],
      ),
      child: Text(message,style: TextStyle(color: textColor)),
    );
  }
}


class RecieverChatCard extends StatelessWidget {
  var message;

  RecieverChatCard(this.message);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/img.png',),
            ),
            SizedBox(width: 5,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Isla",style: TextStyle(color: textColor,fontSize: 12),),
                Text("1m ago",style: TextStyle(color: textColor))
              ],
            )
          ],
        ),
        SizedBox(height: 5,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          margin: EdgeInsets.only(left: 25),
          decoration: BoxDecoration(
            color: contentColor,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(5),bottomRight: Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                color: secondaryColor.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(5, 7), // changes position of shadow
              ),
            ],
          ),
          child: Text(message,style: TextStyle(color: textColor)),
        ),

      ],
    );
  }
}
