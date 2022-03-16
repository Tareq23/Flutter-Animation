import 'package:flutter/material.dart';

class Heart extends StatefulWidget {
  const Heart({Key? key}) : super(key: key);

  @override
  _HeartState createState() => _HeartState();
}

class _HeartState extends State<Heart> with SingleTickerProviderStateMixin{


  late AnimationController _animationController;

  late Animation _colorAnimation;
  late Animation<double> _sizeAnimation;
  bool _isFavorite = false;
  @override
  void initState(){
    super.initState();


    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _colorAnimation = ColorTween(begin: Colors.grey[400],end: Colors.red).animate(_animationController);

    _sizeAnimation = TweenSequence(<TweenSequenceItem<double>>[
      TweenSequenceItem(
          tween: Tween<double>(begin: 30,end: 40),
          weight: 50
      ),
      TweenSequenceItem(
          tween: Tween<double>(begin: 40,end: 30),
          weight: 50
      ),
    ]).animate(_animationController);

    _animationController.addListener(() {
        // print(_sizeAnimation.value);
    });

    _animationController.addStatusListener((status) {
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
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (BuildContext context, _){
        return IconButton(
            icon: Icon(
              Icons.favorite,
              color: _colorAnimation.value,
              size: _sizeAnimation.value,
            ),
            onPressed: (){
              _isFavorite ? _animationController.reverse() : _animationController.forward();
            },
        );
      },
    );
  }
}

