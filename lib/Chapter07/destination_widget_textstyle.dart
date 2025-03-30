import 'package:flutter/material.dart';

class DestinationWidgetTextStyle extends StatefulWidget {
  const DestinationWidgetTextStyle({super.key, required this.name, required this.description});

  final String name;
  final String description;

  @override
  State<DestinationWidgetTextStyle> createState() => _DestinationWidgetTextStyleState();
}

class _DestinationWidgetTextStyleState extends State<DestinationWidgetTextStyle> {
  late int _likeCounter;

  @override
  void initState() {
    super.initState();

    _likeCounter = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Destination")),
      body: Column(
        children: [
          Row(
            children: [
              Flexible(
                child: Text(
                  "asdf asdf asdf asdf asdf asdf asdf adsf asdf asdf sadf asdf asdf ${widget.name}",
                  style: const TextStyle(
                    backgroundColor: Color.fromRGBO(50, 168, 82, 1),
                    color: Colors.red,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    letterSpacing: 2,
                    wordSpacing: 3,
                    overflow: TextOverflow.fade,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
          Text(
            widget.description,
            style: const TextStyle(backgroundColor: Color(0x0032a852)),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                _likeCounter++;
              });
            },
            icon: const Icon(Icons.thumb_up),
          ),
          Text(_likeCounter.toString()),
          ElevatedButton(
            child: const Text("Back"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
