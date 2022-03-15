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
  bool _isFavorite = false;
  @override
  void initState(){
    super.initState();
    _animationController = AnimationController(
      duration: Duration(microseconds: 1000),
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

    _animationController.addStatusListener((status) {
        print(status);
        if(status == AnimationStatus.completed){
          setState(() {
            _isFavorite = true;
          });
        }
        if(status == AnimationStatus.dismissed){
          setState(() {
            _isFavorite = false;
          });
        }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (BuildContext context, _){
        return IconButton(
            onPressed: (){
              // _animationController.forward();
              _isFavorite ? _animationController.reverse() : _animationController.forward();
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

