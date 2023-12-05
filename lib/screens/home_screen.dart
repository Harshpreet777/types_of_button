
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
 backgroundColor: Theme.of(context).colorScheme.inversePrimary,
  title: Text(widget.title),
      ),
      body: Center(
  child: Column(
     mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(onPressed: _incrementCounter, child: const Text('Elevated button'))),
             TextButton(onPressed: _incrementCounter, child: const Text('Text Button')),
             IconButton(onPressed: _incrementCounter, icon:const Icon(Icons.add)),
             OutlinedButton(onPressed: _incrementCounter, child: const Text('Outline Button'))

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}
