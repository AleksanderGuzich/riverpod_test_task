import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Enter your email',
            ),
            TextField(
              controller: emailController,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text('Tap to send'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
