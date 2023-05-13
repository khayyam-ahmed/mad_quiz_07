import 'package:flutter/material.dart';

void main() => runApp(const GestureDetectorExampleApp());

class GestureDetectorExampleApp extends StatelessWidget {
  const GestureDetectorExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: GestureDetectorExample(),
    );
  }
}

class GestureDetectorExample extends StatefulWidget {
  const GestureDetectorExample({super.key});

  @override
  State<GestureDetectorExample> createState() => _GestureDetectorExampleState();
}

class _GestureDetectorExampleState extends State<GestureDetectorExample> {
  String _gestureText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Gesture',
                  hintText: 'Detecting Gesture',
                ),
                controller: TextEditingController(text: _gestureText),
                readOnly: true,
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  _gestureText = 'Single Tap';
                });
              },
              onDoubleTap: () {
                setState(() {
                  _gestureText = 'Double Tap';
                });
              },
              onPanEnd: (_) {
                setState(() {
                  _gestureText = 'Pan End';
                });
              },
              onPanUpdate: (_) {
                setState(() {
                  _gestureText = 'Pan Update';
                });
              },
              onLongPress: () {
                setState(() {
                  _gestureText = 'Long Press';
                });
              },
              onVerticalDragStart: (_) {
                setState(() {
                  _gestureText = 'Vertical Drag Start';
                });
              },
              onVerticalDragEnd: (_) {
                setState(() {
                  _gestureText = 'Vertical Drag End';
                });
              },
              child: Container(
                color: Colors.yellow.shade600,
                padding: const EdgeInsets.all(100),
                child: const Text("Test Gestures Here"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
