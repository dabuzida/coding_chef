import 'dart:html';
import 'package:coding_chef/navigatorr.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(context);
    return MaterialApp(
      title: 'CodingChef',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('CodingChef'),
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          centerTitle: true,
        ),
        // body: const Navigatorr(),
        body: FirstPage(),
        // body: NewWidget(),
      ),
    );
  }
}

// class NewWidget extends StatelessWidget {
//   const NewWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         child: Text('go to second page'),
//         onPressed: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (BuildContext context) {
//                 return Navigatorr();
//               },
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Second page'),
          onPressed: () {},
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('First page'),
          onPressed: () {},
        ),
      ),
    );
  }
}
