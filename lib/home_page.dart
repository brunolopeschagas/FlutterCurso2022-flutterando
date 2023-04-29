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
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/img/jesus.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: Colors.black.withOpacity(0.80),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const FlutterLogo(
                    size: 150,
                    textColor: Colors.white,
                    style: FlutterLogoStyle.horizontal,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Entrar no app"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
