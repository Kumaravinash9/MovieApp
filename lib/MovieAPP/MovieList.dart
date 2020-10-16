
import 'package:MovieApp/MovieAPP/MovieClass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'UI/MoveListView.dart';

Widget stacy(Movie movie,BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
      children: <Widget>[
      Padding(
      padding: const EdgeInsets.only(left:45),
      child:   Card(color: Colors.blueGrey.shade600,
      elevation: 10,
      child:Flexible(
              child: Container(
              height: 120,
      padding: EdgeInsets.only(left: 54,top: 10), 
      child: ListTile(
      subtitle: Padding(padding:EdgeInsets.only(left:8),
      child:Column( mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Row( mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Flexible(child: Text(movie.Title.toString(),style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: "odibeeSans"),)),
    
      Flexible(child: Text(" ${movie.imdbRating.toString()}/10",style: TextStyle(
       fontSize: 20,color: Colors.cyan,fontWeight: FontWeight.bold,fontFamily: "odibeeSans"
      ),)),
      ],
        
      ),
      Container(
        
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround,crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Flexible(child: Text(" ${movie.Released.toString() }",style: TextStyle(
       fontSize: MediaQuery.of(context).size.width*.046,color: Colors.black,fontFamily: "odibeeSans"
      ),)),
      Flexible(child: Text(movie.RunTime,style: TextStyle(
       fontSize: MediaQuery.of(context).size.width*.046,color: Colors.black,fontFamily: "odibeeSans"
      )),),
      Flexible(child: Text(movie.Rated,style: TextStyle(
       fontSize: MediaQuery.of(context).size.width*.046,color: Colors.black,fontFamily: "odibeeSans"
      ),),)

        ],
          
        ),
      )

    ],
    ) 
   ),
     onTap: (){
     Navigator.push(context,MaterialPageRoute(builder: (context)=>MovieNavigator(MovieListy: movie,)) );
     },
    ),
  ),
  ),),
  ),
     Imageo(movie.Image[0]),
  
          ],
        ),);}

/***********************************ImageTop********************/


         Container Imageo( String imag) {
    return Container(
      width: 120,
      height: 125,
  decoration: BoxDecoration(
    image: DecorationImage(image:NetworkImage(imag.toString()) ,fit: BoxFit.cover),
    shape: BoxShape.circle,
  ),
  
    );
    }