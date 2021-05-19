import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'instagrambody.dart';

class Home extends StatelessWidget {
  final topBar = new AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: false,
    elevation: 1.0,
toolbarHeight: 62,
    title: SizedBox(
      height: 46.0,
      // width: 120,
      child: Image.asset("assets/logo.png"),
      
    ),

    // actions: [
    //   Padding(padding: const EdgeInsets.only(right:19),
    //    child: Icon(FontAwesomeIcons.facebookMessenger),

    //    ),
    //    child: Icon(icon)],
    actions: [
      Padding(
        padding: const EdgeInsets.only(top: 7.0),
        child: IconButton(
            icon: const Icon(
              Icons.favorite_outline_sharp,
              size: 32,
            ),
            onPressed: () {}),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 7.0, top: 4),
        child: IconButton(
            icon: Icon(
              FontAwesomeIcons.facebookMessenger,
              size: 27,
            ),
            onPressed: () {}),
      )
    ],
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        
        color: Colors.white,
        height: 48,
        child: BottomAppBar(
         
          child: Row(
            
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            
            children: [
              
              IconButton(
                
                  icon: Icon(
                    Icons.home,
                    size: 38,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.search,
                    size: 38,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.add_box_outlined,
                    size: 38,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    size: 38,
                  ),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(
                    Icons.account_box,
                    size: 38,
                  ),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
