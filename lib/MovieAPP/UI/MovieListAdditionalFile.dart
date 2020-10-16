import 'package:flutter/material.dart';

import '../MovieClass.dart';

class LowerPart extends StatelessWidget {
 final Movie MovieX;
 const LowerPart({Key key,this.MovieX}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Row(
mainAxisAlignment: MainAxisAlignment.start,
 children: <Widget>[
  Container(
  width: 150,
  height: 140,
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(6),
  image: DecorationImage(image:NetworkImage(MovieX.Image[2]),fit: BoxFit.cover)
  ),
  ),
Flexible(
  child: Container( 
  width: 300,
  height: 140,
  alignment: Alignment.centerLeft,
  margin: EdgeInsets.only(left:4,top: 14),
   decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(6)),
    child:   Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:CrossAxisAlignment.start,
    children: <Widget>[
    Flexible(
          child: Text(MovieX.Title.toString(),style: TextStyle(
letterSpacing: 4,fontWeight: FontWeight.w800,fontSize: 25,
color: Colors.black,fontFamily: "OdibeeSans"

      ),),
    ),

    Text(MovieX.Plot.toString(),style: TextStyle(

fontSize: 17,fontFamily: "OdibeeSans"
    ),),
    SizedBox(height:4),
     Flexible(
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[ Flexible(
                                  child: Text.rich(TextSpan(
    style: TextStyle(color: Colors.cyan,fontFamily: "OdibeeSans")
    ,children: <TextSpan>[
    TextSpan(text:MovieX.Released.toString(),style: TextStyle(
        color: Colors.red[100]
    )),
  TextSpan(text:"                 "),
    TextSpan(text:MovieX.Director,style: TextStyle(
      fontSize: 14,
    ))

   ]
          )
     ),
          ),
    ],),
    ),],
    ),
    ),
),

 ],
    );
  }}