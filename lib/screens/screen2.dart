import 'package:flutter/material.dart';
import 'package:hw3/screens/screen3.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text('Screen 2')
        ),
        body: Center(
          child: Column(
            children:[
              SizedBox(height: 30,),
              SizedBox(height: 10,),
              Container(
                width: 350,
                height: 500,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0,3),
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Icon(
                          Icons.person,
                          size: 100,
                        ),
                        height: 300,
                        width: 300,
                      ),
                      SizedBox(height: 15,),
                      Text(
                        "Lorem ipsum dolor",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 50),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context,'/screen3');
                        }, child: const Text('Go to the screen3'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),


      ),
    );
  }
}
