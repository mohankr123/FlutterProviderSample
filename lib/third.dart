import 'package:myapp/four.dart';
import 'package:myapp/provider/profile_provider.dart';
import 'package:myapp/second.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class THirdScreen extends StatefulWidget {
  const THirdScreen({super.key});

  @override
  State<THirdScreen> createState() => _THirdScreenState();
}

class _THirdScreenState extends State<THirdScreen> {
  final TextEditingController _textcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();
    // _textcontroller.text = Provider.of<ProfileProvider>(
    //   context,
    //   listen: false, // Be sure to listen
    // ).name;
  }

  @override
  void didChangeDependencies() {
    _textcontroller.text = Provider.of<ProfileProvider>(
      context,
      listen: true, // Be sure to listen
    ).name;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    // return Consumer<ProfileProvider>(
    //   builder: (context, repo, _) {
    //     return Center(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Text(repo.name),
    //           const SizedBox(
    //             height: 50.0,
    //           ),
    //           TextField(
    //             controller: _textcontroller,
    //           ),
    //           TextButton(
    //               onPressed: (() {
    //                 Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                     builder: (context) => Second(),
    //                   ),
    //                 );
    //               }),
    //               child: const Text("Next"))
    //         ],
    //       ),
    //     );
    //   },
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50.0,
            ),
            TextField(
              controller: _textcontroller,
            ),
            TextButton(
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FourScreen(),
                    ),
                  );
                }),
                child: const Text("Next"))
          ],
        ),
      ),
    );
  }
}
