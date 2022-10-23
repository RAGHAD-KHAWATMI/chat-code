// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings

import 'package:chat/models/message.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import 'chat_screen.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          backgroundColor: Colors.red,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              iconSize: 30,
              color: Colors.white,
              onPressed: () {}),
          title: Text(
            "Chat",
            style: TextStyle(fontSize: 28),
          )),
      body: Column(
        children: [
          SizedBox(height: 20),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Color(0xfffef9eb),
                ),
                child: (ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, i) {
                    final Message chat=chats[i];
                    return GestureDetector(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:(_)=>ChatScreen(user:chat.sender)));
                        
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage: AssetImage("/img/" + chat.sender.imgurl,),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(chat.sender.name,
                                        style: TextStyle(
                                            color: Colors.black87,
                                            fontSize: 15,
                                           )
                                           ),
                                    Container(
                                      width:MediaQuery.of(context).size.width*0.45,
                                        child: Text(chat.text,
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.grey),
                                                overflow: TextOverflow.ellipsis,
                                                )
                                                ),
                                  ],
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(chat.time,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                               SizedBox(height: 4,),
                                chat.unread?
                                Container(
                                  width: 40,
                                  height:20,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius:BorderRadius.circular(30)),
                                  
                                  child: Text(
                                    "New",
                                      style: TextStyle(
                                      fontSize: 12, color: Colors.white)),
                                )
                                :Text(""),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ))),
          ),
        ],
      ),
    );
  }
}
