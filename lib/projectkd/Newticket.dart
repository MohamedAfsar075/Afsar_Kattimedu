import 'package:first_project/projectkd/Homes.dart';
import 'package:flutter/material.dart';


class NewTicket extends StatefulWidget {
  const NewTicket({super.key});

  @override
  State<NewTicket> createState() => _NewTicketState();
}

class _NewTicketState extends State<NewTicket> {
  void openDialogueView(BuildContext context) {
    (
    showDialog(
        context: context,
        builder: (builder) => Column(
          children: [
            AlertDialog(
              title: const Text(
                "Are you want cancel?",
                style: TextStyle(color: Colors.indigo),
              ),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.amberAccent),
                        child: Center(
                          child: GestureDetector(
                            onTap: () {
                              openDialogueView3(context);
                            },
                            child: const Text(
                              "Yes",
                              style: TextStyle(color: Colors.indigo),
                            ),
                          ),
                        ))),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Container(
                      height: 30,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.amberAccent),
                      child: const Center(
                        child: Text(
                          "No",
                          style: TextStyle(color: Colors.indigo),
                        ),
                      ),
                    ))
              ],
            )
          ],
        )),
    );
  }

  @override
  void openDialogueView2(BuildContext context) {
    (
    showDialog(
        context: context,
        builder: (builder) => const Column(
          children: [
            AlertDialog(
              title: Text(
                "Ticket Created",
                style: TextStyle(color: Colors.indigo),
              ),
              actions: [
                Center(
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.amberAccent,
                    ))
              ],
            )
          ],
        )),
    );
  }

  @override
  void openDialogueView3(BuildContext context) {
    (
    showDialog(
        context: context,
        builder: (builder) => const Column(
          children: [
            AlertDialog(
              title: Text(
                "Ticket Canceled",
                style: TextStyle(color: Colors.indigo),
              ),
              actions: [
                Center(
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.amberAccent,
                    ))
              ],
            )
          ],
        )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomAppBar(color: Colors.amberAccent),
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const homes(),
                ),
              );
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.amberAccent,
            ),
          ),
          title: const Text(
            "New Ticket",
            style: TextStyle(color: Colors.amberAccent),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {
                  openDialogueView(context);
                },
                child: const Icon(
                  Icons.cancel_outlined,
                  color: Colors.amberAccent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {
                  openDialogueView2(context);
                },
                child: const Icon(
                  Icons.check,
                  color: Colors.amberAccent,
                ),
              ),
            )
          ],
        ),
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/kpost.jpeg"),
                    fit: BoxFit.fill)),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [const Text(
                            "Name*",
                            style: TextStyle(
                                color: Colors.indigo, fontWeight: FontWeight.bold),
                          ),
                        Container(
                            height: 30,
                            width: 385,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,boxShadow: [
                              BoxShadow(
                                  color: Colors.blue.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0
                              ),
                            ],
                            )
                        )
                      ]
            ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        "Department*",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 100.0),
                      child: Text(
                        "Phone*",
                        style: TextStyle(
                            color: Colors.indigo, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,boxShadow: [
                          BoxShadow(
                              color: Colors.blue.shade500,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15,
                              spreadRadius: 1.0
                          ),
                        ],),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 35.0),
                      child: Container(
                        height: 30,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,boxShadow: [
                          BoxShadow(
                              color: Colors.blue.shade500,
                              offset: Offset(4.0, 4.0),
                              blurRadius: 15,
                              spreadRadius: 1.0
                          ),
                        ],),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email*",
                          style: TextStyle(
                              color: Colors.indigo, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            height: 30,
                            width: 385,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,boxShadow: [
                              BoxShadow(
                                  color: Colors.blue.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0
                              ),
                            ],))
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Subject*",
                          style: TextStyle(
                              color: Colors.indigo, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            height: 30,
                            width: 385,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,boxShadow: [
                              BoxShadow(
                                  color: Colors.blue.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0
                              ),
                            ],))
                      ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Description*",
                          style: TextStyle(
                              color: Colors.indigo, fontWeight: FontWeight.bold),
                        ),
                        Container(
                            height: 80,
                            width: 385,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,boxShadow: [
                              BoxShadow(
                                  color: Colors.blue.shade500,
                                  offset: Offset(4.0, 4.0),
                                  blurRadius: 15,
                                  spreadRadius: 1.0
                              ),
                            ],))
                      ]),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.amberAccent.shade700),
                    child: const Center(
                        child: Text(
                          "Upload",
                          style: TextStyle(color: Colors.indigo,fontWeight: FontWeight.bold),
                        )),
                  ),
                ),
                Center(
                    child: Container(
                      height: 40,
                      width: 385,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), color: Colors.white,boxShadow: [
                        BoxShadow(
                            color: Colors.blue.shade500,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 15,
                            spreadRadius: 1.0
                        ),
                      ],
                      ),
                    )),
              ],
            ),
        ),
    );
  }
}