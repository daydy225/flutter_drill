import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Error Widget Example'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Throw Error'),
          onPressed: () {
            throw Exception('An error has occurred!');
          },
        ),
      ),
    );
  }
}
