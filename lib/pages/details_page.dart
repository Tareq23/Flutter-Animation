import 'package:flutter/material.dart';
import 'package:flutter_animation/constant/constant_text.dart';
import 'package:flutter_animation/models/item_model.dart';

class DetailsPage extends StatelessWidget {

  final TripModel trip;

  const DetailsPage({Key? key, required this.trip}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        extendBodyBehindAppBar: true,
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                  child: Image.asset(
                    '${trip.imgUrl}',
                    height: 360,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  )
              ),
              SizedBox(height: 30),
              ListTile(
                  title: Text(
                      trip.name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey[800]
                      )
                  ),
                  subtitle: Text(
                      '${trip.night} night stay for only \$${trip.price}',
                      style: TextStyle(letterSpacing: 1)
                  ),
                  // trailing: Heart()
              ),
              Padding(
                  padding: EdgeInsets.all(18),
                  child: Text(
                      ConstantText.loremParagraphOne,
                      style: TextStyle(
                          color: Colors.grey[600],
                          height: 1.4
                      )
                  )
              ),
            ],
          ),
        )
    );
  }
}

