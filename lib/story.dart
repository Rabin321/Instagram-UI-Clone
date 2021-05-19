import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final bottomText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "fcbarcelona",
        style: TextStyle(fontSize: 15, color: Colors.black54),
      ),
      // Row(
      //   children: [

      //   ],
      // )
    ],
  );


  // for stories

  final stories = Expanded(
    child: ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => new Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.red,
                width: 3,
              ) ,
              image: DecorationImage(
                fit: BoxFit.fill,
                image:AssetImage("assets/bean.jpg"))
            ),
            margin: const EdgeInsets.symmetric(horizontal: 14.0),
          ),

          index == 0 ? Positioned(
            right: 10,


            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.white,
              
              child: CircleAvatar(
                
                backgroundColor: Colors.blue[600],
                radius: 12.0,
                child: Icon(Icons.add,size: 21,color: Colors.white,),
                
                ),
            ),) : new Container(),
        ],
      ) ) 
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          stories,
          bottomText,
        ],
      ),
    );
  }
}
