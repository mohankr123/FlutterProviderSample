import 'package:flutter/material.dart';
import 'package:myapp/provider/profile_provider.dart';
import 'package:provider/provider.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileProvider>(
      builder: (context, repo, _) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Second"),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(repo.name),
              const SizedBox(
                height: 50.0,
              ),
              TextField(
                onChanged: (value) {
                  repo.setname(value);
                },
              ),
            ],
          )),
        );
      },
    );
  }
}
