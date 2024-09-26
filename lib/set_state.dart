import 'package:flutter/material.dart';

class SetState extends StatefulWidget {
  const SetState({super.key});

  @override
  State<SetState> createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  String text = "World!";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello $text!',
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                // function to change the text
                setState(() {
                  if (text == "World!") {
                    text = "Taofeek!";
                  } else {
                    text = "World!";
                  }
                });
              },
              child: const Text(
                'Change text',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
