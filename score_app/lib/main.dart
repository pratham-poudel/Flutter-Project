import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Score App',
      debugShowCheckedModeBanner: false, 
      home: ScoreHome(),
    );
  }
}

class ScoreHome extends StatefulWidget {
  const ScoreHome({super.key});

  @override
  State<ScoreHome> createState() => _ScoreHomeState();
}

class _ScoreHomeState extends State<ScoreHome> {
  int number = 0;
  void increaseNumber() {
    setState(() {
      number++;
    });
  }

  void decreaseNumber() {
    setState(() {
      number--;
    });
  }

  void resetScore() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Score App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetScore,
        child: const Icon(Icons.restore_outlined),
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          const Center(
            child: Text(
              'Score is',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          Center(
            child: Text(
              number.toString(),
              style: const TextStyle(
                fontSize: 200,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: increaseNumber,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                child: const Text("INCREASE"),
              ),
              const SizedBox(
                width: 60,
              ),
              ElevatedButton(
                onPressed: decreaseNumber,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                child: const Text("DECREASE"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
