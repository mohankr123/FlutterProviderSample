import 'package:myapp/provider/profile_provider.dart';
import 'package:myapp/second.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class FourScreen extends StatefulWidget {
  const FourScreen({super.key});

  @override
  State<FourScreen> createState() => _THirdScreenState();
}

class _THirdScreenState extends State<FourScreen> {
  TextEditingController _textcontroller = TextEditingController();

  @override
  void initState() {
    final ProfileProvider myProvider =
        Provider.of<ProfileProvider>(context, listen: false);

    super.initState();
    _textcontroller = TextEditingController(text: myProvider.name);
  }

  // @override
  // void didChangeDependencies() {
  //   _textcontroller.text = Provider.of<ProfileProvider>(
  //     context,
  //     listen: true, // Be sure to listen
  //   ).name;
  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Four"),
        ),
        body: Consumer<ProfileProvider>(
          builder: (context, repo, _) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(repo.name),
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextField(
                    controller: _textcontroller,
                    onChanged: (value) {
                      repo.setname(value);
                    },
                  ),
                  TextButton(
                      onPressed: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Second(),
                          ),
                        );
                      }),
                      child: const Text("Next"))
                ],
              ),
            );
          },
        ));
  }
}
