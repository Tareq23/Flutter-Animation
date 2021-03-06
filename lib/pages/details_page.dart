import 'package:flutter/material.dart';
import 'package:flutter_animation/components/heart.dart';
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ClipRRect(
                    child: Hero(
                      tag: 'image-tag ${trip.imgUrl}',
                      child: Image.asset(
                        '${trip.imgUrl}',
                        height: 360,
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    )
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: ListTile(
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
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.all(0),
                      width: MediaQuery.of(context).size.width * 0.3,
                      child: const Heart(),
                    )
                  ],
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
          ),
        )
    );
  }
}

