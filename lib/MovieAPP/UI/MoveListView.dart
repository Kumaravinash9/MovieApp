import 'package:MovieApp/MovieAPP/MovieClass.dart';
import 'package:flutter/material.dart';
import 'ImageSection.dart';
import 'MovieListAdditionalFile.dart';



class MovieNavigator extends StatelessWidget {
  final Movie MovieListy;
  const MovieNavigator({Key key,this.MovieListy}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: 
      <Widget>[
    
          Text(MovieListy.Title),
    
          SizedBox(width:5),
    
          Icon(Icons.movie_filter),
    
        ],
  ),
  centerTitle: true,
   backgroundColor: Colors.blueGrey[300],
     ),
     bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.transparent,),title: Text(" ")),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back_rounded,color: Colors.blue,size: 34,),title: Text("Back")),
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.transparent,),title: Text(" ")),
     ],onTap: (int index){
Navigator.pop(context);
     },),
     body:ListView(scrollDirection: Axis.vertical,
    children: <Widget>[
   Padding(
     padding: const EdgeInsets.all(8.0),
     child: Column(
       children: <Widget>[
         Stack(
  alignment: Alignment.bottomCenter,
  children: <Widget>[
Stack(alignment: Alignment.center,
                 children: <Widget>[
              Container(
                    padding: EdgeInsets.only(bottom: 0),
          width:MediaQuery.of(context).size.width*1,
          height: MediaQuery.of(context).size.width*.75,
          
          decoration: BoxDecoration(color: Colors.brown,
                  borderRadius: BorderRadius.circular(6),border:Border.all(width:.01,color: Colors.white),
                  image: DecorationImage(image:NetworkImage(MovieListy.Image[1].toString()),fit: BoxFit.cover )
          ),
                  ),
                
              Icon(Icons.play_circle_filled,size: 60,color: Colors.white,)
                 ],
                 ),

  ],
         ),
         SizedBox(height:5),
         LowerPart(MovieX:MovieListy),
         Divider(thickness:.5,color:Colors.white),
         Images(mages:MovieListy),
       ],
     ),
   )
    ],
     )
    );
  }
}

