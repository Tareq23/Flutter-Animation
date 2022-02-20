import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // width: ,
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bg.png'),
            fit: BoxFit.fitWidth,
            alignment: Alignment.topLeft,
          )
        ),
        child: Column(
          children: [
            const SizedBox(height: 25,),
            Container(
              height: 100,
              alignment: Alignment.centerLeft,
              child: const Text('Animation',style: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.w600),),
            )
          ],
        ),
      ),
    );
  }
}
