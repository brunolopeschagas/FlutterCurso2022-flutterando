import 'package:flutter/material.dart';

//desenha na tela o widget (sem estado, deixa o estado para o State abaixo)
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//gerencia o estado do widget
class _HomePageState extends State<HomePage> {
  final list = <String>[];
  final controller = TextEditingController();

  //chamado ao iniciar o widget
  @override
  void initState() {
    super.initState();
  }

  //chamado ao finalizar o widget
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                  controller: controller,
                )),
                IconButton(
                    onPressed: () {
                      final text = controller.text;
                      setState(() {
                        list.add(text);
                      });
                      controller.clear();
                    },
                    icon: const Icon(Icons.add)),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  final item = list[index];
                  return ListTile(
                    title: Text(item),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
