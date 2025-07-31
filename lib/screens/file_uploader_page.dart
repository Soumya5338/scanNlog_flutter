import 'package:flutter/material.dart';

class FileUploaderPage extends StatelessWidget {
  const FileUploaderPage({super.key});

  void _onAddPressed() {
    // You can implement action here (e.g., open a file select dialog, etc.)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Upload Files'),
      ),
      body: const SizedBox(), // Empty body
      floatingActionButton: FloatingActionButton(
        onPressed: _onAddPressed,
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
