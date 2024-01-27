import 'package:first_project/projectkd/Homes.dart';
//import 'package:first_project/sample.dart';
import 'package:flutter/material.dart';



class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      body: SingleChildScrollView(
       child: Column(
         children: [
           Container(
             height: MediaQuery.of(context).size.height,
             width: MediaQuery.of(context).size.width,
             decoration: const BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage('assets/images/kpost.jpeg'),
                     fit: BoxFit.fill)),
             child: Column(
               children: [
                 const SizedBox (height: 250),
                 Container(
                   height: 450,
                   width: 350,
                   decoration: BoxDecoration(
                     color: Colors.white,
                     boxShadow: [
                       BoxShadow(
                         color: Colors.blue.shade500,
                         offset: const Offset(4.0, 4.0),
                         blurRadius: 15,
                         spreadRadius: 1.0
                       ),
                     ],
                     borderRadius: BorderRadius.circular(30)
                   ),
                   child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      CircleAvatar(
                        child: Image.asset(
                          'assets/images/kpost.jpeg',
                        ),
                        radius: 35,
                      ),
                      const SizedBox(
                        height: 36,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Email',
                              style: TextStyle(color: Colors.amberAccent.shade400,fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding:  EdgeInsets.symmetric(
                             horizontal: 25),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(15),right: Radius.circular(25),
                              )
                            ),
                               hintText: ('Enter your Email '),
                               suffixStyle: TextStyle(color: Colors.grey,fontSize: 16)
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding:  const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              'Password',
                              style: TextStyle(color: Colors.amberAccent.shade400,fontSize: 16,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:  const EdgeInsets.symmetric(
                          horizontal: 25
                        ),
                        child: TextField(
                          obscureText: obscureText,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            enabledBorder: const OutlineInputBorder(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(15),right: Radius.circular(25),
                              )
                          ),
                            hintText: ('Enter your password '),
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    obscureText = !obscureText;
                                  });
                                },
                                child: const Icon(Icons.remove_red_eye)),
                          ),
                        ),
                      ),
                      const Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding:  EdgeInsets.all(0.6),
                            child: Text('Forget password? '),
                          ),
                        ],
                      ),
                      Container( height: 40,width: 70,color: Colors.amberAccent.shade400,
                        child:  InkWell(
                            onTap: () {
                              setState(() {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => const homes()));
                              });
                            },
                            child: Center(child: Text('Sign IN',style: TextStyle(fontSize: 16,color: Colors.indigo.shade700,fontWeight: FontWeight.bold),))
                        ),
                        ),
                    ],
                   ) ,
                 ),
               ],
             ),
           ),
         ],
       ),
      ),
    )
    );
  }
}






