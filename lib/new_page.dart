import 'package:flutter/material.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key, required this.isRed});

  final bool isRed;

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  TextEditingController textEditingController = TextEditingController();
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.isRed ? Colors.red : Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('New Page'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ],
      ),
      body: Column(
        children: [
          TextField(
            controller: textEditingController
            ),
           Text(textEditingController.text),
        ],
      ),
    );
  }
}
