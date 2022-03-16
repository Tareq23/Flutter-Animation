import 'package:flutter/material.dart';

class AnimatedSearchBar extends StatefulWidget {
  const AnimatedSearchBar({Key? key}) : super(key: key);

  @override
  _AnimatedSearchBarState createState() => _AnimatedSearchBarState();
}

class _AnimatedSearchBarState extends State<AnimatedSearchBar> {

  bool _searchBarActive = false;

  @override
  Widget build(BuildContext context) {

    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Search Bar'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: AnimatedContainer(
                alignment: Alignment.center,
                duration: const Duration(seconds: 1),
                height: 60,
                width: _searchBarActive ? 200 : 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  color: Colors.white,
                  boxShadow: kElevationToShadow[6],
                ),
                child: Row(
                  children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 14),
                          child: _searchBarActive ? TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(color: Colors.blue[300]),
                              border: InputBorder.none,
                            ),
                          ) : null,
                        ),
                      ),
                     AnimatedContainer(
                       duration: const Duration(milliseconds: 400),
                       alignment: Alignment.center,
                       padding: const EdgeInsets.all(16),
                       child: Material(
                         type: MaterialType.transparency,
                         child: InkWell(
                           onTap: (){
                             setState(() {
                               _searchBarActive = !_searchBarActive;
                             });
                           },
                           child: _searchBarActive ? const Icon(Icons.close,color: Colors.blue,) : const Icon(Icons.search,color: Colors.blue,),
                         ),
                       ),
                     )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
