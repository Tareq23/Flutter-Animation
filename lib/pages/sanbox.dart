import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({Key? key}) : super(key: key);

  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {

  double _width = 100;
  Color _color = Colors.lightGreen;
  bool _toggle = false;
  double _opacity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        width: _width,
        height: MediaQuery.of(context).size.height,
        color: _color,
        child: Column(
          children: [
            SizedBox(height: 50,),
            Center(
              child: MaterialButton(
                onPressed: (){
                  setState(() {
                    if(_toggle){
                      _width = 200;
                      _color = Colors.purple;
                    }
                    else{
                      _width += 100;
                      _color = Colors.lightGreen;
                    }
                    _toggle = !_toggle;
                  });
                },
                child: const Text("animate width & color"),
              ),
            ),
            SizedBox(height: 50,),
            MaterialButton(onPressed: (){
              setState(() {
                _opacity == 0 ? _opacity = 1 : _opacity = 0;
              });
            },child: Text('Opacity check'),),
            AnimatedOpacity(
                opacity: _opacity,
                duration: Duration(seconds: 2),
              child: const Text('Opacity test text'),
            )
          ],
        ),
      ),
    );
  }
}
