import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/story.dart';

class InstagramList extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
     var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5,
      
      itemBuilder: (context, index) => index == 0 ? new SizedBox(
        child: Story(),
        height: deviceSize.height * 0.19,
      ) : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(padding: EdgeInsets.fromLTRB(16, 16,8, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.red,
                        width: 2,

                      ) ,
                      image: DecorationImage(fit: BoxFit.fill,
                      image: NetworkImage("https://cdn.dnaindia.com/sites/default/files/styles/full/public/2020/07/24/915158-718152-john-cena-instagram.jpg"))
                    ),),
                    SizedBox(width: 10.0,),
                    Text("johncena", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)
                ],
              ),
              IconButton(icon: Icon(Icons.more_vert_sharp), onPressed: (){})


          ],),
          ),
          // next row
          Flexible(
            fit: FlexFit.loose,
            child: Image.network("https://i.pinimg.com/originals/22/e2/e5/22e2e583f6ed298d4fafb56ba2e58574.jpg"),
            ),


            Padding(padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      FontAwesomeIcons.heart,
                      size: 28,
                    ),
                    SizedBox(width: 16.0,),
                    
                     Icon(
                      FontAwesomeIcons.comment,
                       size: 28,
                    ),
                    SizedBox(width: 16.0,),
                     Icon(
                      FontAwesomeIcons.paperPlane,
                       size: 28,
                    ),
                    SizedBox(width: 16.0,),
                  ],
                ),
               Icon(FontAwesomeIcons.bookmark)
              ],
            ),
            ),
        
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                Text("Liked by ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),
                Text("rabin_10shrestha", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                Text(" and ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),
                Text("134,220 others", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                ],
              ),
              
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal:16.0),
            child: Row(
              children: [
                Text("johncena ", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                Text("#WWE", style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.w600,color: Colors.blue[900]),),
                 Text(" Whether you like me or not, I still dig", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),
                           
              ],
            ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                 Text("showing", style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),
                Text("up for work",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500 ),),
                Text("... more ", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,),)
              ],
            ),
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0,),
            child: Row(
              children: [
                Text("\nView all 16,890 comments",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400 ),)
              ],
            ),
            
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text("\nUndertaker ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w900),),
                 Text("\nNever Give Up",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),)
                ],
            ),
            ),

            Padding(padding: EdgeInsets.fromLTRB(16, 10, 8, 8),
            
child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Row(
                children: [
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.red,
                        width: 2,

                      ) ,
                      image: DecorationImage(fit: BoxFit.fill,
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpGWq15vvxf4RlqOQcvU1Nr6eK9x7lKng8kz8dbs6DukZ5owqr1mdmqwrEnWTcwiVxeYQ&usqp=CAU"))
                    ),),

                    SizedBox(width: 10.0,),
                    // This does't enable us to write in a comment section.
                    // Text("Add a comment...", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),)
                   
                ],
              ),
              // this enables us to write in comment section.
               Expanded(child: TextField(decoration: InputDecoration(
                 border: InputBorder.none,
                 hintText: "Add a comment...",),
                    ),
                    ),
            


          ],),

            ),

          // 1 day ago
          Padding(padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Text("7 hours ago",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400),),
               
                ],
            ),
            ),
        ],
      ),
      
      
    );
  }
}