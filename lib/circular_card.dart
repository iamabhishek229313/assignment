import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CircularCard extends StatefulWidget {
  final double height;
  final bool isAudioSync;
  final bool isHost;
  final bool isMuted;

  const CircularCard({Key key, this.height, this.isAudioSync, this.isHost, this.isMuted}) : super(key: key);
  @override
  _CircularCardState createState() => _CircularCardState();
}

class _CircularCardState extends State<CircularCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: widget.height,
          width: widget.height,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  border: widget.isAudioSync ? Border.all(width: 2.0, color: Colors.greenAccent) : null,
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(widget.height),
                  child: Image.asset(
                    'assets/images/person.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              widget.isHost
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2.0),
                          color: Colors.blueGrey.shade50,
                        ),
                        child: Text(
                          'Host',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  : SizedBox()
            ],
          ),
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Virgie Cadwell',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16.0),
                ),
                widget.isMuted
                    ? SizedBox(
                        width: 6.0,
                      )
                    : SizedBox(),
                widget.isMuted
                    ? Icon(
                        FeatherIcons.micOff,
                        size: 16.0,
                        color: Colors.grey.shade700,
                      )
                    : SizedBox()
              ],
            ),
            Text(
              'Marketing at\nMintome',
              maxLines: 2,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 12.0, color: Colors.grey, fontWeight: FontWeight.w500),
            )
          ],
        )
      ],
    );
  }
}
