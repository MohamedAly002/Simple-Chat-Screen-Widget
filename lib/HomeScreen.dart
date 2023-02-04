import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
@override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
      leading: IconButton(onPressed:() {},icon: Icon(Icons.arrow_back_outlined),),
       title: Row(children: [
         CircleAvatar(backgroundImage: AssetImage('assets/images/person.jpg'),),
         SizedBox(
           width: 10,
         ),
         Text('Person')]),
       actions: [IconButton(onPressed:() {},icon:Icon(Icons.videocam)),
       IconButton(onPressed:() {},icon:Icon(Icons.call))
      ,IconButton(onPressed:() {},icon:Icon(Icons.more_vert_rounded))],
       backgroundColor: Colors.black87,
     ),
     body: Container(
       decoration:
       BoxDecoration(image:
       DecorationImage(image:
       AssetImage("assets/images/background.png"),fit: BoxFit.fill)),
       child: Column(children: [
         SizedBox(height: 20,),
         Row(children: [SizedBox(width: 10,),CircleAvatar(backgroundImage: AssetImage('assets/images/person1.jpg'),
           radius: 35,),
           Expanded(
             child: Container(
               alignment: Alignment.center,
               padding: EdgeInsets.all(20),
               margin: EdgeInsets.all(10),
               decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(30)),
               child: Text('This is My First Message',style: TextStyle(fontSize: 18,color: Colors.white),),
             ),
           )

         ],)
         ,SizedBox(height: 40,),
         Row(children: [Expanded(
           child: Container(
             alignment: Alignment.center,
             padding: EdgeInsets.all(20),
             margin: EdgeInsets.all(10),
             decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(30)),
             child: Text('This is My Second message',style: TextStyle(fontSize: 18,color: Colors.white),),
           ),
         ),
          CircleAvatar(backgroundImage: AssetImage('assets/images/person2.jpg'),
         radius: 35,)

         ],),
         Spacer(),
         Row(children: [
           Expanded(
             child: Container(
               decoration: BoxDecoration(
                 border: Border.all(color: Colors.white),
                 borderRadius: BorderRadius.circular(30),
               ),
                 child: TextField(
                   style: TextStyle(color: Colors.white),
                   decoration: InputDecoration(
                     prefixIcon: IconButton(onPressed: (){},
                         icon: Icon(Icons.emoji_emotions_outlined,color: Colors.white,size: 30,)),
                     hintText: 'Type a Message ',
                     hintStyle: TextStyle(color:Colors.white),
                     suffixIcon: IconButton(onPressed: (){},
                         icon: Icon(Icons.attach_file,color: Colors.white,size: 30,))
                   ),
                 )),
           ),
           Container(

               child: CircleAvatar(backgroundColor: Colors.white,
                 radius: 28,
                   child: CircleAvatar(backgroundColor: Colors.black,
                     radius: 27,
                     child: IconButton(onPressed: (){},
                         icon: Icon (Icons.mic,color: Colors.white,)),
                   ))
               )
         ],)
       ],),
       ),
     )
   ;
  }
}