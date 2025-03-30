import 'package:flutter/material.dart';

class TranslatedButton extends StatelessWidget {
  const TranslatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Translated button example")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text("Original button"),
              onPressed: () {},
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            Transform.translate(
              offset: const Offset(30, 30),
              child: ElevatedButton(
                child: const Text("translated button"),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
