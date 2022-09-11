import 'package:flutter/material.dart';
import 'package:uidesign/constants.dart';

class CustomSelectionButton extends StatelessWidget {
  var text;
  Color color,textcolor;
  CustomSelectionButton(this.text,this.color,this.textcolor);

  var h,w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(Radius.circular(15)),
        boxShadow: [
          BoxShadow(
            color: secondaryColor.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 5), // changes position of shadow
          ),

        ],
      ),
      width: w*0.3,
      height: h*0.05,
      child: Center(child: Text(text,style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic,color: textcolor))),
    );
  }
}
