import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dropdown/controllers/drop_provider.dart';
import 'package:provider_dropdown/views/homescreen.dart';

void main(List<String> args) {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DropProvider(),
      child: MaterialApp(
        home: Homescreen(),
      ),
    );
  }
}
