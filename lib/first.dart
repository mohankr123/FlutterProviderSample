import 'package:myapp/provider/profile_provider.dart';
import 'package:myapp/second.dart';
import 'package:myapp/third.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    // _textcontroller.text = Provider.of<ProfileProvider>(
    //   context,
    //   listen: false, // Be sure to listen
    // ).name;
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(
      builder: (context, repo, _) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(repo.name),
              const SizedBox(
                height: 50.0,
              ),
              TextButton(
                  onPressed: (() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const THirdScreen(),
                      ),
                    );
                  }),
                  child: const Text("Next"))
            ],
          ),
        );
      },
    );
  }
}
