
import 'package:flutter/material.dart';
import 'MovieClass.dart';
import 'MovieList.dart';

class MovieApp extends StatelessWidget {
  List<Movie>MovieList= Movie.getMore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
                Text("MovieApp"),
                SizedBox(width:0.1,),
           CircleAvatar(
            radius:16,
            backgroundColor: Colors.transparent,
            child: Icon(Icons.movie_creation,color: Colors.white,size: 26,),),
                             ],
                   ),
       centerTitle: false,),

  bottomNavigationBar: BottomNavigationBar(items: [
  BottomNavigationBarItem(title: Text(" ",),icon: Icon(Icons.transform_sharp,color: Colors.transparent,)),
  BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blue.withOpacity(.8),),title: Text("Home")),
  BottomNavigationBarItem(title: Text(" "),icon: Icon(Icons.transform_sharp,color: Colors.transparent)),
 ]),
body:ListView.builder(itemCount: MovieList.length, itemBuilder: (BuildContext context,int index){
  return stacy(MovieList[index], context);

})

  );
  }
  
      
  }
  
  

