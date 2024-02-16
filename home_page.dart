import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{
  int cont=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
      title: const Text("Karla Guadalupe Mejía Reséndiz"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Número de clicks"),
          Text("$cont"),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(), 
    );
  }
  _crearBotones() {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => _sumar(),
        ),
        
        FloatingActionButton(
          child: const Icon(Icons.remove),
          onPressed: () => _restar(),
        ),
        FloatingActionButton(
        child: Icon(
          Icons.refresh),
          onPressed: () => _resetear(),
        ),
        ],
    )
  
    );
  }
  
    void _sumar() {
      setState(() =>
        cont++
      );
    }
    void _restar() {
      setState(() {
      if (cont > 0) {
      cont--;
    }
  });
}
    void _resetear(){
      setState(() =>
      cont=0);
    }
  }
    