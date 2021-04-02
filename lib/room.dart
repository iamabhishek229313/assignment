import 'package:assign/circular_card.dart';
import 'package:flutter/material.dart';

class Room extends StatefulWidget {
  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.black,
        //   title: Text('Room'),
        //   centerTitle: true,
        // ),
        bottomNavigationBar: Container(
          height: screenHeight * 0.08,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: screenHeight * 0.03,
                child: OutlineButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  borderSide: BorderSide(color: Colors.indigo.shade100, width: 1.5),
                  child: Text(
                    'Leave',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Theme(
                data: ThemeData(iconTheme: IconThemeData(color: Colors.grey)),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(icon: Icon(Icons.send), onPressed: () {}),
                    IconButton(icon: Icon(Icons.face_outlined), onPressed: () {}),
                    IconButton(icon: Icon(Icons.waves), onPressed: () {})
                  ],
                ),
              )
            ],
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Work life balance and good vibes',
                style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w800),
              ),
            ),
            Container(
              height: screenHeight * 0.45,
              padding: const EdgeInsets.all(16.0),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4 Speaking',
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: CircularCard(
                                height: screenHeight * 0.45 / 4, isAudioSync: false, isHost: true, isMuted: true)),
                        Expanded(
                            child: CircularCard(
                                height: screenHeight * 0.45 / 4, isAudioSync: true, isHost: false, isMuted: false))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                            child: CircularCard(
                                height: screenHeight * 0.45 / 4, isAudioSync: false, isHost: false, isMuted: false)),
                        Expanded(
                            child: CircularCard(
                                height: screenHeight * 0.45 / 4, isAudioSync: false, isHost: false, isMuted: true))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.pink.shade50.withAlpha(850),
              padding: const EdgeInsets.all(16.0),
              child: Wrap(
                children: [
                  Text(
                    '216 Listening',
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w700),
                  ),
                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    padding: const EdgeInsets.only(top: 16.0),
                    physics: NeverScrollableScrollPhysics(),
                    children: List.generate(12, (index) {
                      return Column(
                        children: [
                          SizedBox(
                            width: screenWidth / 8,
                            height: screenWidth / 8,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(screenWidth),
                              child: Image.asset(
                                'assets/images/person.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text('Jeff Tanaka', style: TextStyle(fontSize: 14.0)),
                        ],
                      );
                    }),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
