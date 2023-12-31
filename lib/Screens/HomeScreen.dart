import 'package:flutter/material.dart';
import 'package:loginpage/widgets/DrawerList.dart';
import 'package:loginpage/widgets/ListViewHorizontal.dart';
import 'package:loginpage/widgets/MyDrawerHeader.dart';
import 'package:loginpage/widgets/icons.dart';

class HomeScreen extends StatelessWidget {
  void _updateDrawerHeader(String name, String enrollmentNo) {
  }
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Expanded(
        child: SingleChildScrollView(
          child: Container(
            //this container has the background gradient of drawer

            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: Alignment.center,
                radius: 0.9, // Radius of 1.0 makes it circular
                colors: [
                  Color.fromRGBO(241, 36, 85, 1),
                  Color.fromRGBO(9, 15, 21, 1),
                ],
                stops: [0.17, 0.78], // Corresponding to the percentages in the CSS code
              ),
            ),
            child: SingleChildScrollView(
              child: Container(

                child: Column(
                  children: [
                    //my drawerheader would redirect you to a container where there is image of user and name and enrollment no
                    MyDrawerHeader(updateDrawerHeader:_updateDrawerHeader),
                    //Drawer list has al the notifications ad list of the things
                    DrawerList(),
                  ],
                ),
              ),
            ),

          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text("C A M P A V E R S E" ,style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Colors.white,
            shadows:[  Shadow(
          offset: Offset(2.0, 2.0),
          blurRadius: 3.0,
          color: Colors.grey,
        ),]),),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 0.9, // Radius of 1.0 makes it circular
            colors: [
              Color.fromRGBO(241, 36, 85, 1),
              Color.fromRGBO(9, 15, 21, 1),
            ],
            stops: [0.17, 0.78], // Corresponding to the percentages in the CSS code
          ),
        ),


       child: Container(
         child: Column(
           children: [

             
             Padding(
               padding: const EdgeInsets.all(50),
               child: Padding(
                 padding: const EdgeInsets.all(12.0),
                 child: Container(width: double.infinity,
                   height: 230,
                   decoration: BoxDecoration(

                     color: Colors.white70.withOpacity(0.1), // Opacity value (0.5) for semi-transparency
                     borderRadius: BorderRadius.circular(50), // Rounded corners
                     boxShadow: [
                       BoxShadow(
                         color: Colors.black.withOpacity(0.2), // Shadow color and opacity
                         spreadRadius: 5, // Spread radius of the shadow
                         blurRadius: 10, // Blur radius of the shadow
                         offset: Offset(0, 3), // Offset of the shadow
                       ),
                     ],
                   ),
                   child: Column(
                     children: [Padding(
                       padding: const EdgeInsets.only(top: 30,bottom: 10),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [

                           IconsPage(IconButton: IconButton(icon:Icon( Icons.event_note_outlined,color: Colors.white,), onPressed: (){},iconSize: 30,), IconName:"NoticeBoard"),
                           IconsPage(IconButton: IconButton(icon:Icon( Icons.people_alt,color: Colors.white), onPressed: (){
                             Navigator.pushNamed(context, '/vnitclubs');

                           },iconSize: 30,), IconName:"Clubs"),
                           IconsPage(IconButton: IconButton(icon:Icon( Icons.shopping_bag_outlined,color: Colors.white), onPressed: (){},iconSize: 30,), IconName:"TnP")


                         ],
                       ),
                     ),
                       Padding(
                         padding: const EdgeInsets.only(top: 30,bottom: 10,left: 15),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             IconsPage(IconButton: IconButton(icon:Icon( Icons.book_online_outlined,color: Colors.white), onPressed: (){


                             },iconSize: 30,), IconName : "Bookings"),
                             IconsPage(IconButton: IconButton(icon:Icon( Icons.miscellaneous_services,color: Colors.white), onPressed: (){

                             },iconSize: 30,), IconName:"Services",) ,
                             IconsPage(IconButton: IconButton(icon:Icon( Icons.school_outlined,color: Colors.white), onPressed: (){},iconSize: 30,), IconName:"Academic Section")

                           ],
                         ),
                       ),
         ]
                   ),

                 ),
               ),
             ),
             HorizontalScrollCards(),





           ],

         ),
       ),
      ),


    );
  }
}
