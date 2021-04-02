import 'dart:math';

import 'package:assign/room.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        backgroundColor: Colors.white,
        onPressed: () {},
        label: Text(
          '  Start Caupal  ',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.black87),
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
            itemCount: 10,
            padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.top * 3),
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Container(
                height: screenHeight * 0.289,
                width: double.maxFinite,
                padding: const EdgeInsets.symmetric(horizontal: 16.0).copyWith(top: 16.0, bottom: 8.0),
                margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.indigo.shade800,
                  image: (index % 2 == 0)
                      ? DecorationImage(
                          image: AssetImage("assets/images/forest.jpg"),
                          fit: BoxFit.cover,
                        )
                      : null,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Live the wild',
                          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w800, color: Colors.white),
                        ),
                        Text(
                          'Discussion about Wild life',
                          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w800, color: Colors.white),
                        ),
                        Text(
                          '#love #wild #nature',
                          style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w800, color: Colors.white),
                        ),
                      ],
                    ),
                    Expanded(
                        child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 4.0),
                      width: double.maxFinite,
                      child: Wrap(
                        runSpacing: 8.0,
                        spacing: 8.0,
                        alignment: WrapAlignment.spaceBetween,
                        runAlignment: WrapAlignment.spaceEvenly,
                        children: List.generate(4, (index) {
                          return Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: screenWidth / 9.5,
                                height: screenWidth / 9.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5.0),
                                  child: Image.asset(
                                    'assets/images/person.jpg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Text('Jeff Tanaka',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.w600)),
                            ],
                          );
                        }),
                      ),
                    )),
                    SizedBox(
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: double.maxFinite,
                              child: RaisedButton(
                                elevation: 0.0,
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14.0)),
                                color: Colors.white60,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(builder: (_) => Room()));
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      FeatherIcons.mic,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text(
                                      'Join Now',
                                      style:
                                          TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          IconButton(icon: Icon(Icons.share_outlined), onPressed: () {}),
                          IconButton(icon: Icon(FeatherIcons.bookmark), onPressed: () {}),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }
}
