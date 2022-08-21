import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:instagram/screens/home/view.dart';
import '../profile/view.dart';
class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  get bottomNavigationBar => null;

  get currentPage => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
child:Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
  Expanded(
    flex: 1,
      child: Container(
        margin: EdgeInsetsDirectional.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.grey.withOpacity(0.2)
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.black,),
              SizedBox(width: 10,),
              Text("Search",style: TextStyle(fontSize: 18,color: Colors.black45),),
            ],
          ),
        ),
      )
  ),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex:2,
          child:
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width-100,
                height: 300,
                color: Colors.cyanAccent,
                child:GridView.count(
                  primary: false,
                  crossAxisCount: 2,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  children: [
                    post("images/ro.jpg"),
                    npost("images/hamd.jpg"),
                    post("images/hair.jpg"),
                    npost("images/rowdna.jpg"),
                    post("images/ro.jpg"),
                    post("images/lettt.jpg"),
                    post("images/ro.jpg"),
                    post("images/lettt.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child:Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width-350,
                height: 300,
                color: Colors.cyanAccent,
                child:
                    post("images/mylet.jpg"),
              ),

              //post("images/lettt.jpg"),


            ],
          ),
        ),
      ],
    ),


SizedBox(height: 2,),
    Expanded(
      flex:6,

      child: Container(
        color: Colors.white,
        child :GridView.count(
          primary: false,
          crossAxisCount: 3,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          children: [
            npost("images/mo.jpg"),
            post("images/moon.jpg"),
            post("images/rodna.jpg"),
            npost("images/hair.jpg"),
            post("images/nice.jpg"),
            npost("images/pash.jpg"),
            post("images/hair.jpg"),
            post("images/rodna.jpg"),
            npost("images/mo.jpg"),
          ],
        ),
      ),
    ),
  ],
) ,
      ),

        bottomNavigationBar: CircleBottomNavigationBar(
          initialSelection: currentPage,
          circleColor: Colors.purple,
          activeIconColor: Colors.white,
          inactiveIconColor: Colors.black87,
          tabs: [
            TabData(
              icon: Icons.home_outlined,
              iconSize: 25,
              onClick: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home()));
              },

              // Optional
            ),

            TabData(icon: Icons.search,
              onClick: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Explore()));
              },
            ),
            TabData(icon: Icons.video_collection_outlined),
            TabData(icon: Icons.favorite_border_outlined),
            TabData(
                icon: Icons.person,
                onClick: (){
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => Profile()));

    },

            ),
          ],
            onTabChangedListener: (int position) {  },
          
        )
    );
  }
 static post(String postimage){
    return  Stack(
        children: [
        Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(postimage),
            fit: BoxFit.cover,
          ),
        ),
        ),
          Positioned(
            child: Image.asset(("images/reel.png"),width: 30,height: 25,
            ),
            right: 10, top: 10,
          )
        ],

    );
  }
 Container npost(postimage){
    return Container(

      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(postimage),
          fit: BoxFit.cover,
        ),
      ),
    );
 }
}

/*
 Expanded(
      flex:10,

        child: Container(
          color: Colors.white,
          child :GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 2,
            crossAxisSpacing: 2,
            children: [
             post("images/ro.jpg"),
              post("images/lettt.jpg"),

              ],

        ),
    ),
      ),
 */