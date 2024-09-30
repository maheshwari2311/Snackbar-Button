import 'package:flutter/material.dart';

class MySnack extends StatelessWidget {
  const MySnack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "my snack",
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              content: const Text(
                "hello snackbar",
              ),
              action: SnackBarAction(label: 'undo', onPressed: () {}),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text(
            'show snackbar',
          ),
        ),
      ),
    );
  }
}
