import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_dropdown/controllers/drop_provider.dart';
import 'package:provider_dropdown/views/secondscreen.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropSaver'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: Provider.of<DropProvider>(context).firstvalue,
              items:
                  Provider.of<DropProvider>(context).items.map((String item) {
                return DropdownMenuItem(value: item, child: Text(item));
              }).toList(),
              onChanged: (value) {
                Provider.of<DropProvider>(context, listen: false)
                    .dropUpdater(value);
              },
            ),
            // Text(Provider.of<DropProvider>(context).firstvalue)
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const SecondScreen(),
                  ));
                },
                child: const Text('Save'))
          ],
        ),
      ),
    );
  }
}
