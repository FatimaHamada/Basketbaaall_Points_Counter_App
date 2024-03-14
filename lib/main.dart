import 'package:flutter/material.dart';

void main() {
  runApp( PointsConter());
}

// ignore: must_be_immutable
class PointsConter extends StatefulWidget {
 PointsConter({super.key});

  @override
  State<PointsConter> createState() => _PointsConterState();
}

class _PointsConterState extends State<PointsConter> {
 int teamApoints=0;

int teamBpoints=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Points Conter',
              style: TextStyle(color: Colors.white,
              fontWeight: FontWeight.bold
              ),
            ),
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
           
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                     const Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                     Text(
                      '$teamApoints',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    MaterialButton(
                      color: Colors.orange,
                      height: 50,
                      onPressed: () {
                       
                       setState(() {
                          teamApoints++;
                       });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      color: Colors.orange,
                      height: 50,
                      onPressed: () {
                          
                       setState(() {
                         teamApoints+=2;
                       });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      color: Colors.orange,
                      height: 50,
                      onPressed: () { 
                       setState(() {
                           teamApoints+=3;
                       });},
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                 const SizedBox(
                  height: 500,
                   child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 10,
                 
                               ),
                 ),
                  Column(
                  children: [
                     const Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                     Text(
                      '$teamBpoints',
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    MaterialButton(
                      color: Colors.orange,
                      height: 50,
                      onPressed: () {
                       
                       setState(() {
                          teamBpoints++;
                       });
                      },
                      child: const Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      color: Colors.orange,
                      height: 50,
                      onPressed: () {
                          
                       setState(() {
                         teamBpoints+=2;
                       });
                      },
                      child: const Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MaterialButton(
                      color: Colors.orange,
                      height: 50,
                      onPressed: () { 
                       setState(() {
                           teamBpoints+=3;
                       });},
                      child: const Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
                
              ],
            ),
             const SizedBox(
                      height: 20,
                    ),
           MaterialButton(
                      color: Colors.orange,
                      height: 50,
                      onPressed: () {
                        setState(() {
                          teamBpoints=0;
                          teamApoints=0;
                        });
                      },
                      child: const Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ),
                  
          ],
        ),
      ),
    );
  }
}
