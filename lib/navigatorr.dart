import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Navigatorr extends StatefulWidget {
  const Navigatorr({Key? key}) : super(key: key);

  @override
  State<Navigatorr> createState() => _NavigatorrState();
}

class _NavigatorrState extends State<Navigatorr> {
  @override
  Widget build(BuildContext ctx) {
    print(ctx);
    return Scaffold(
      appBar: AppBar(
        title: const Text('CodingChef'),
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      // body: const Navigatorr(),
      body: Center(
        child: ElevatedButton(
          child: Text('go to first page'),
          onPressed: () {
            Navigator.pop(ctx);
          },
        ),
      ),
    );
  }
}
