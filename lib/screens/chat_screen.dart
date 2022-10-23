// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:chat/models/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/user.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({required this.user});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //this function is too build each message container
  buildmess(String text,bool me,index){
         return Container(
          margin: me?EdgeInsets.only(top:8,bottom: 8,left:80):EdgeInsets.only(top:8,bottom: 8,right:80),
          padding: EdgeInsets.symmetric(horizontal: 25,vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: me?Color.fromARGB(255, 255, 251, 215):Color(0xffffefee),
            ),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(messages[index].time,
              style: TextStyle(color:Colors.grey,fontSize: 11),
              ),
              SizedBox(height:5),
              Text(text,style: TextStyle(color:Colors.black87,fontSize: 15)
              ),
            ],
          ),
         );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.red,
            leading: IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30,
                color: Colors.white,
                onPressed: () {
                  Navigator.pop(context);
                  }),
            actions: [
                  
              Padding(
                padding: EdgeInsets.only(right:20,top:7,bottom: 7),
                child:Row(
                  children: [
                    Text(widget.user.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    // fontWeight: FontWeight.bold
                  )),
              SizedBox(width: 10),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage("/img/"+widget.user.imgurl),
              ),
                  ],
                )
                )
            ],
                      ),
        
        body:Column(
          children: [
            Expanded(
              child: (
               Container(
                child:ListView.builder(
                  padding: EdgeInsets.all(20),
                  reverse: true,
                  itemCount: 6,
                  itemBuilder: (ctx,index){
                    bool current=messages[index].sender==currentuser?true:false;
                   return (buildmess(messages[index].text,current,index));
                  }
                  )
                )
              ),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: 70,
              child: Row(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.photo),
                    color:Colors.red,
                  ),
                  Expanded(child: TextField(
                    decoration: InputDecoration.collapsed(hintText: "send a message..."),
                  )),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.send),
                    color:Colors.red,
                  ),
                ]
                ),
            )
          ],
        ),
        
        
        
        );
  }
}
