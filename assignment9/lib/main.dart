import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Food",
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  State<HomeActivity> createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black12,
              radius: size.width/2,
              child: CircleAvatar(
                radius: (size.width/2)-10,
                backgroundImage: const NetworkImage("https://images.pexels.com/photos/572897/pexels-photo-572897.jpeg"),
              ),

            ),
            const SizedBox(height: 10,),
            const Text("Nature", style: TextStyle(
              fontSize: 30,
            ),),
            const SizedBox(height: 10,),
            const Text("Nature, in the broadest sense, is the physical world or universe. Nature can refer to the phenomena of the physical world,  and also to life in general. The study of nature is a large."),
            const SizedBox(height: 10,),




          ],
        ),
      ),


    );

  }
}

