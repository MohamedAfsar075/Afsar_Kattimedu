import 'package:flutter/material.dart';

class dialog extends StatefulWidget {
  const dialog({super.key});

  @override
  State<dialog> createState() => _dialogState();
}

class _dialogState extends State<dialog> {
  void openDialogueView(BuildContext context) {
    showDialog(
        context: context,
        builder: (builder) => Column(
              children: [
                AlertDialog(
                  title: Image.asset('assets/images/image9.gif'),
                  content: const Column(
                    children: [
                      Text(
                        'Grany Eating Chocoloate',
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                          'This is agranny eating chocoloate dialog box.This libary helps you easily create fancity gifty dialog'),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                          height: 31,
                          width: 79,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.grey,
                          ),
                          child: const Center(
                              child: Text(
                            "cancel",
                            style: TextStyle(color: Colors.white),
                          ))),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Container(
                            height: 31,
                            width: 79,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(15)),
                            child: const Center(
                              child: Text(
                                "ok",
                                style: TextStyle(color: Colors.greenAccent),
                              ),
                            )))
                  ],
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 55,
            ),
            GestureDetector(
              onTap: () {
                openDialogueView(context);
              },
              child: Container(
                child: const Center(
                    child: Text(
                  "click",
                  style: TextStyle(color: Colors.greenAccent, fontSize: 40),
                )),
                height: 50,
                width: 150,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
