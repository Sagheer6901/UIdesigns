import 'package:flutter/material.dart';
import 'package:uidesign/constants.dart';

class DateCard extends StatelessWidget {
  var title,date,day;
  Color color;
   DateCard(this.title, this.date, this.day,this.color);

  var h,w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: contentColor,
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
      width: w*0.22,
      child: Column(
        children: [
          Container(
            height: h*0.05,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0)),
              color: color,      ),            child: Center(child: Text(title,style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: textColor))),
          ),
          Column(
            children: [
              SizedBox(height: 3,),
              Text(date,style: TextStyle(fontSize: 14, color: textColor)),
              SizedBox(height: 3,),
              Text(day,style: TextStyle(fontSize: 14,color: textColor)),
              SizedBox(height: 10,),

            ],
          )
        ],
      ),
    );
  }
}
