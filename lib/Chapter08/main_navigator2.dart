import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String? _selectedDestination;

  void _setDestination(String destination) {
    setState(() {
      _selectedDestination = destination;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Navigator(
        pages: [
          MaterialPage(
              child: MyHomePage(
            title: "Press this",
            destinationCallback: _setDestination,
          )),
          if (_selectedDestination != null)
            MaterialPage(
              child: DestinationDetails(title: _selectedDestination!),
            ),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }
          setState(() {
            _selectedDestination = null;
          });
          return true;
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title, required this.destinationCallback});
  final void Function(String) destinationCallback;

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: const Text('Whitby'),
              onPressed: () {
                widget.destinationCallback("Whitby");
              },
            ),
            ElevatedButton(
              child: const Text('Scarborough'),
              onPressed: () async {
                widget.destinationCallback("Scarborough");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class DestinationDetails extends StatelessWidget {
  const DestinationDetails({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Favorite'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
            ElevatedButton(
              child: const Text("Close"),
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ],
        ),
      ),
    );
  }
}
