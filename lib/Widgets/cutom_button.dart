import 'package:flutter/material.dart';
import 'package:uidesign/constants.dart';

class CustomButton extends StatelessWidget {
  var text;
  Color color;
  Function press;
  var width;
  CustomButton(this.text,this.color,this.width,this.press);

  var h,w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        width: width,
        height: h*0.06,
        child: Center(child: Text(text,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: contentColor))),
      ),
    );
  }
}
