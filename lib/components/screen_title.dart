import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {

  final String title;

  const ScreenTitle({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        child: Text(title,style: const TextStyle(color: Colors.black,fontSize: 26,fontWeight: FontWeight.w500),),
        tween: Tween<double>(begin: 0, end: 1),
        duration: const Duration(seconds: 2),
        builder: (BuildContext context, double _val, Widget? child){
          return Opacity(
            opacity: _val,
            child: Padding(
              padding: EdgeInsets.only(top: _val * 30),
              child: child,
            ),
          );
        }
    );
  }
}
