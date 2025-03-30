import 'package:flutter/material.dart';

class DestinationWidgetContainer extends StatefulWidget {
  const DestinationWidgetContainer({super.key, required this.name, required this.description});

  final String name;
  final String description;

  @override
  State<DestinationWidgetContainer> createState() => _DestinationWidgetContainerState();
}

class _DestinationWidgetContainerState extends State<DestinationWidgetContainer> {
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
          Container(
            decoration: const ShapeDecoration(
              shape: StadiumBorder(
                side: BorderSide(
                  color: Colors.green,
                  width: 6,
                ),
              ),
            ),
            child: Text(
              widget.name,
            ),
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
