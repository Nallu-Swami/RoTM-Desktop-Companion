import 'package:flutter/material.dart';

class UserRespiratoryStatExtended extends StatefulWidget {
  const UserRespiratoryStatExtended({super.key});

  @override
  State<UserRespiratoryStatExtended> createState() =>
      _UserRespiratoryStatExtendedState();
}

class _UserRespiratoryStatExtendedState
    extends State<UserRespiratoryStatExtended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App Title'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context); // This will pop the current screen and go back.
          },
        ),
      ),
      body: const Center(
        child: Text('Your Scaffold Body'),
      ),
    );
  }
}
