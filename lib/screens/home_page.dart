import 'package:flutter/material.dart';
import 'second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late TextEditingController nametextController;
  late TextEditingController lastNametextController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenidos a flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: "Nombre:"),
              controller: nametextController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: "Apellido:"),
              controller: lastNametextController,
            ),
            ElevatedButton(
              child: const Text('Mostrar informacion'),
              onPressed: () {
                _showSecondPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _showSecondPage(BuildContext context) {
    Navigator.of(context).pushNamed("/second",
        arguments: SecondPageArguments(
            name: nametextController.text,
            lastName: lastNametextController.text));
  }

  @override
  void initState() {
    super.initState();
    nametextController = TextEditingController();

    lastNametextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    nametextController.dispose();

    lastNametextController.dispose();
  }
}
