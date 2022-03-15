import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({Key? key}) : super(key: key);

  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin{


  late AnimationController _animationController;

  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    _animationController.forward();

    _animationController.addListener(() {
      print(_animationController.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: (){},
        icon: const Icon(Icons.favorite,color: Colors.grey,)
    );
  }
}

