import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:instagram/screens/home/view.dart';
import '../explore/view.dart';
import '../profile/view.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get currentPage => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(backgroundColor: Colors.white,title:
      Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Instagram",style: TextStyle(fontSize: 20,color: Colors.black),),
            Row(
              children: [
                Icon(Icons.add_box_outlined, color: Colors.black,),
                SizedBox(width: 10,),
                Icon(Icons.mark_as_unread_sharp, color: Colors.black,),
              ],
            ),

            ],
        ),
      ),
        elevation: 0,
      ),
      body:
      Container(
        // height: 1000,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [

                    navrow("images/ro.jpg"),
                    navrow("images/rodna.jpg"),
                    navrow("images/rowdna.jpg"),
                    navrow("images/moon.jpg"),
                    navrow("images/pash.jpg"),
                  ],

                ),
              ),
                        navcol("images/ro.jpg","images/moon.jpg","Es un hecho establecido hace demasiado tiempo que un lector \n se distraerá con el . ","Rola waleed"),
                        navcol("images/hair.jpg","images/ro.jpg","Lorem Ipsum es simplemente el texto de relleno de las\n imprentas y archivos de texto.","Roaa waleed"),
                        navcol("images/mo.jpg","images/nice.jpg","Lorem Ipsum es simplemente el texto de relleno de las\n imprentas y archivos de texto.","Carton"),
                        navcol("images/moon.jpg","images/lettt.jpg","Nice music","Ola waleed"),
            ],
          )
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

  Padding navcol(String impost,String manpost , String x, String name) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        margin: EdgeInsetsDirectional.all(7),
        height: 300,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.white,

        ),
        child:
        Column(
          children: [
            Container(
              width: 600, height: 2, color: Colors.grey,
            ),
            SizedBox(height: 2,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(manpost),
                    ),
                    SizedBox(width: 3,),
                    Text(name ,
                      style: TextStyle(fontSize: 17, color: Colors.black),),
                  ],
                ),
                Icon(Icons.more_vert_outlined),
              ],

            ),
            Center(
              child: Container(
                height: 180, width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.cyan,
                    image: DecorationImage(
                        image: AssetImage(impost),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border_outlined),
                    SizedBox(width: 3,),
                    Icon(Icons.mode_comment_outlined),
                    SizedBox(width: 3,),
                    Icon(Icons.send_rounded, color: Colors.black87,),

                  ],
                ),
                Icon(Icons.save_alt),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(x,style: TextStyle(fontSize:15,color: Colors.black),),
                )
              ],
            ),
          ],

        ),
      ),

    );
  }

  Padding navrow(roimag) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsetsDirectional.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),


        ),
        child:
        Column(
          children: [
            Center(
              child: Container(
                height: 80, width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.deepPurple,width: 2),
                    image: DecorationImage(
                        image: AssetImage(roimag),
                        fit: BoxFit.cover
                    )
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}