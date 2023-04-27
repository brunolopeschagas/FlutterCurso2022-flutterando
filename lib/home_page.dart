import 'package:flutter/material.dart';

//desenha na tela o widget (sem estado, deixa o estado para o State abaixo)
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//gerencia o estado do widget
class _HomePageState extends State<HomePage> {
  final names = ['joão', 'maria', 'jurandir'];

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
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: ListView.builder(
            itemCount: names.length,
            itemBuilder: (context, index) {
              final name = names[index];
              return ListTile(
                title: Text(name),
              );
            },
          )),
    );
  }
}
