import 'package:counter_app_with_provider/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: const Text("Counter App"),
        centerTitle: true,
      ),
       body: Center(child: Text("${state.count}")),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              state.increment();

          }, child: const Icon(Icons.add),),
           const SizedBox(width: 5,),
          FloatingActionButton(
            onPressed: () {
              state.decrement();
          }, child: const Icon(Icons.remove),),
        ],
      ),
    );
  }
}
