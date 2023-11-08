import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dropdown/controllers/drop_provider.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropSaver'),
      ),
      body: Consumer<DropProvider>(
        builder: (context, value, child) {
          return Center(
            child: Text(
              value.firstvalue,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
