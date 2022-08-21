import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:instagram/screens/explore/view.dart';
import 'package:instagram/screens/home/view.dart';
import '../profile/view.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  get currentPage => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body:
      Column(
        children: [

          Padding(
              padding: const EdgeInsets.all(10),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_outlined, color: Colors.black,),
                  Icon(Icons.menu, color: Colors.black,),
                ],
              ),
            ),

          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 900, height: 330,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.white
                ),
              ) ,
              Positioned(
                top: -50,
                left: 0,
                right: 0,
                child:Center(
                  child: Container(
                    width:100, height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                          image: AssetImage("images/ro.jpg",),
                          fit: BoxFit.cover,

                        ),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              spreadRadius: 4,
                              offset: Offset(0,10),
                              color: Colors.black26
                          )
                        ],
                        color: Colors.purple
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 75,
                  left: 0,
                  right: 0,
                  child:Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text("Roaa Waleed",style: TextStyle(fontSize: 25,color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
                            Text("Los Angeles, CA",style: TextStyle(fontSize: 14,color: Colors.black45,),),
                            SizedBox(height: 15,),
                            Text("Im aposition person. Ilove to travel and eat.",style: TextStyle(fontSize:17,color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
                            Text("Always available for chat",style: TextStyle(fontSize: 17,color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
                            SizedBox(height: 15,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                      width: 40 ,height: 40,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(60))
                                      ),
                                      child: Icon(Icons.message_outlined, color: Colors.blue.shade900,)),
                                  SizedBox(width: 40,),
                                  Container(
                                    width:110, height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 3,
                                              spreadRadius: 4,
                                              offset: Offset(0,5),
                                              color: Colors.blue.shade100
                                          )
                                        ],
                                        color: Colors.blue.shade900
                                    ),
                                    child: Center(child: Text("Follow",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),)),

                                  ),
                                  SizedBox(width: 40,),
                                  Container(
                                      width: 40 ,height: 40,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black26,
                                          ),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(Radius.circular(60))
                                      ),
                                      child: Icon(Icons.share, color: Colors.blue.shade900,)),
                                ],
                              ),
                            ),
                            SizedBox(height: 30,),
                            Row(
                              children: [

                                Column(
                                  children: [
                                    Text("870",style: TextStyle(fontSize: 15,color: Colors.blue.shade900,fontWeight: FontWeight.bold,),),
                                    Text("Following",style: TextStyle(fontSize: 15,color: Colors.black54,),),
                                  ],
                                ),
                                SizedBox(width: 10,),
                                Container(
                                  width: 1, height: 50,
                                  color: Colors.black54,
                                ),
                                SizedBox(width: 40,),
                                Column(
                                  children: [
                                    Text("120k",style: TextStyle(fontSize: 15,color: Colors.blue.shade900,fontWeight: FontWeight.bold,),),
                                    Text("Followers",style: TextStyle(fontSize: 15,color: Colors.black54,),),
                                  ],
                                ),
                                SizedBox(width: 30,),

                                Container(
                                  width: 1, height: 50,
                                  color: Colors.black54,
                                ),
                                SizedBox(width: 30,),
                                Column(
                                  children: [
                                    Text("120k",style: TextStyle(fontSize: 15,color: Colors.blue.shade900,fontWeight: FontWeight.bold,),),
                                    Text("Like",style: TextStyle(fontSize: 15,color: Colors.black54,),),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),


                      ],
                    ),
                  )
              ),
/*
                Positioned(
                    top: 100,
                    left: 0,
                    right: 0,
                    child:Container(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text("Follow",style: TextStyle(fontSize: 15,color: Colors.black,),),
                              Text("Follow",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                            ],
                          )
                        ],
                      ),
                    )),

 */
            ],
          ),
          SizedBox(height: 10,),

          // height: 1000,

          Container(
            color: Colors.white,
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Followers",style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                          SizedBox(width: 200,),
                          Text("View All",style: TextStyle(fontSize: 15,color: Colors.blue.shade900,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            navrow(),
                            Text("Isaiah",style: TextStyle(fontSize: 15,color: Colors.black,),),

                          ],
                        ),

                        Column(
                          children: [
                            navrow(),
                            Text("Ali",style: TextStyle(fontSize: 15,color: Colors.black,),),
                          ],
                        ),
                        Column(
                          children: [
                            navrow(),
                            Text("Rola",style: TextStyle(fontSize: 15,color: Colors.black,),),
                          ],
                        ),
                        Column(
                          children: [
                            navrow(),
                            Text("Ola",style: TextStyle(fontSize: 15,color: Colors.black,),),
                          ],
                        ),
                        Column(
                          children: [
                            navrow(),
                            Text("walid",style: TextStyle(fontSize: 15,color: Colors.black,),),
                          ],
                        ),
                        Column(
                          children: [
                            navrow(),
                            Text("Ola",style: TextStyle(fontSize: 15,color: Colors.black,),),
                          ],
                        ),
                      ],
                    ),

                  ],
                ),

              ],
            ),


          ),
          SizedBox(height: 10,),

          Container(
            height: 130, width: 900,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Posts",style: TextStyle(fontSize: 15,color: Colors.black,),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80, width:150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("images/ro.jpg",),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 80, width:150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("images/ro.jpg",),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    SizedBox(width: 2,),
                    Container(
                      height: 80, width:150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage("images/ro.jpg",),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),

        ],
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
  Padding navrow() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: EdgeInsetsDirectional.all(8),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.black,

        ),
        child:
        Column(
          children: [
            Center(
              child: Container(
                height: 80, width: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        image: AssetImage("images/lettt.jpg",),
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
