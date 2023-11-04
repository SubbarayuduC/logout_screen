import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


void main(){
  runApp(
      const LogOutScreen());
}


class LogOutScreen extends StatefulWidget {
  const LogOutScreen({super.key});

  @override
  State<LogOutScreen> createState() => _LogOutScreenState();
}

class _LogOutScreenState extends State<LogOutScreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Firebase Mettup')),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(

          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Image.asset('images/firebasemeetup.png',
              // width: double.infinity,
              fit: BoxFit.fill,
              height: 250,
              width: double.infinity,

            ),

            const Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 15
                    )
                ),
                Icon(Icons.calendar_today),
                Text('October 30'),
              ],
            ),

            const Row(
              children: [
                Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 15
                    )
                ),
                Icon(Icons.location_city),
                Text('San Francisco'),
              ],
            ),

            const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 10
                )
            ),

            OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: (){

                }, child: const Text('LOGOUT',
              style: TextStyle(color: Colors.black),
            )
            ),

            TextFormField(
              decoration: InputDecoration(),
            ),

            const Text('What we\'ll be doing',
              style: TextStyle(
                  fontSize: 30,color: Colors.black
              ),
            ),

            const Text('Join us for a day full of Firebase Workshops\n and Pizza!',
              style: TextStyle(fontSize: 15),
            ),
          ],

        ),

      ),
    );
  }
}

