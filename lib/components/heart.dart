import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({Key? key}) : super(key: key);

  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin{


  late AnimationController _animationController;

  late Animation _colorAnimation;
  Color _favoriteColor = Colors.grey;
  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(
      duration: Duration(microseconds: 300),
      vsync: this,
    );

    _colorAnimation = ColorTween(begin: Colors.grey[400],end: Colors.red).animate(_animationController);
    // _animationController.forward();

    _animationController.addListener(() {
      // setState(() {
      //   _favoriteColor = _colorAnimation.value;
      // });
      // print(_animationController.value);
      // print(_colorAnimation.value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (BuildContext context, _){
        return IconButton(
            onPressed: (){
              _animationController.forward();
            },
            icon: Icon(
              Icons.favorite,
              // color: Colors.grey,
              color: _colorAnimation.value,
              // color: _favoriteColor,
            )
        );
      },
    );
  }
}

