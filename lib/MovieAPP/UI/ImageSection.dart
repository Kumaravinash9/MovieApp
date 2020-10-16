import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../MovieClass.dart';

class Images extends StatelessWidget {
 final Movie mages;
 const Images({Key key,this.mages}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Container(
    height: MediaQuery.of(context).size.height*.3,
    alignment: Alignment.topLeft,
    decoration: BoxDecoration(
borderRadius: BorderRadius.circular(6),),
child: ListView.separated(scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>
Container(width: MediaQuery.of(context).size.width*.5,
height: MediaQuery.of(context).size.height*1,
decoration: BoxDecoration(
    image: DecorationImage(image:NetworkImage(mages.Image[index]),fit: BoxFit.cover),borderRadius: BorderRadius.circular(8),
  )

,),
 separatorBuilder:(context,index)=>SizedBox(width:6), itemCount: mages.Image.length),
    );
    
  }}