import 'package:flutter/material.dart';
import 'package:shop/pages/providers/counter.dart';

import '../models/product.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'exemplo contador',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: Column(
        children: [
          Text(provider?.state.value.toString() ?? '0'),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.inc();
              });
              print(provider?.state.value);
            },
            icon: const Icon(Icons.add),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.dec();
              });
              print(provider?.state.value);
            },
            icon: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}