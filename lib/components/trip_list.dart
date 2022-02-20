import 'package:flutter/material.dart';
import 'package:flutter_animation/models/item_model.dart';

class TripList extends StatefulWidget {
  const TripList({Key? key}) : super(key: key);

  @override
  _TripListState createState() => _TripListState();
}

class _TripListState extends State<TripList> {

  final GlobalKey _listKey = GlobalKey();

   final List<TripModel> _tripList = [
    TripModel(
        name: "Cox's Bazar",
        price: "1200",
        night: "1",
        imgUrl: "images/beach.png"),
    TripModel(
        name: "Cox's Bazar",
        price: "1200",
        night: "1",
        imgUrl: "images/beach.png"),
    TripModel(
        name: "Cox's Bazar",
        price: "1200",
        night: "1",
        imgUrl: "images/beach.png"),
    TripModel(
        name: "Cox's Bazar",
        price: "1200",
        night: "1",
        imgUrl: "images/beach.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      key: _listKey,
      itemCount: _tripList.length,
        itemBuilder: (context, index) {
      return ListTile(
        contentPadding: const EdgeInsets.all(25),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('${_tripList[index].night} nights',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[300])),
            Text(_tripList[index].name,
                style: TextStyle(fontSize: 20, color: Colors.grey[600])),
          ],
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            _tripList[index].imgUrl,
            height: 50.0,
          ),
        ),
        trailing: Text('\$${_tripList[index].price}'),
      );
    });
  }
}
