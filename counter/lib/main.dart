import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}
class _CounterPageState extends State<CounterPage>{
  int count = 0;
  void increment(){
    setState((){
      count++;
    });
  }
  void decrement(){
    setState((){
      count--;
    });
  }
  void reset(){
    setState((){
      count =0;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            const Text(
              "Counter APP",
              style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height:20),
              Text(
                "$count",
                style: const TextStyle(
                  fontSize: 48, 
                  fontWeight: FontWeight.bold,
                  ),
              ),
              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  ElevatedButton(
                    onPressed: increment,
                    child: const Text("Increment"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: decrement,
                    child: const Text("Decrement"),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: reset,
                    child: const Text("Reset"),
                  ),
                ],
              )
          ],
          ),
        
        
        ),

    );
  }
}
  
