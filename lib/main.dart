import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
      ),
      home: const PageAccueil(title: 'Magazine Infos'),
    );
  }
}

class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),

        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text('Magazine Infos'),
      ),
      body: Center(
      ),
    );
  }
}
