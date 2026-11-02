import 'package:flutter/material.dart';
import 'package:to_do_app/components/button.dart';

class DialogueBox extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const DialogueBox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[300],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // task name
            TextField(
              controller: controller,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              minLines: 1,
              decoration: InputDecoration(  
                border: OutlineInputBorder(),
                hintText: "Add a new task",
              ),
            ),

            Spacer(),

            // save button + cancel button
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Cancel

                MyButton(buttonText: "Cancel", onTap: onCancel),

                SizedBox(width: 8.0),

                // Save
                MyButton(buttonText: "Save", onTap: onSave),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
