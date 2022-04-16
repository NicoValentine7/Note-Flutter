import 'package:flutter/material.dart';
import 'package:note_app/screens/manage_note.dart';
import 'package:note_app/utils/color.dart';
import 'package:note_app/widgets/card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        title: const Text('Notes'),
        backgroundColor: AppColor.primary,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return const NoteCard();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ManageNote(
                title: 'Create Note',
                isEdit: false,
              ),
            ),
          );
        },
        backgroundColor: AppColor.primary,
        tooltip: 'Create Note',
        child: const Icon(Icons.add),
      ),
    );
  }
}
