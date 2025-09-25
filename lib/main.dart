import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int numero = 0;
  void aumentar (){
    setState(() {
      numero++;
    });
  }

  void diminuir (){
    setState(() {
      numero --;
    });
  }

  void resetar (){
    setState(() {
      numero = 0;
    });
  }  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(title: Text("App Contador", style: TextStyle(color: Colors.white),),
        centerTitle: true, //deixa o titulo no centro
        backgroundColor: Colors.blue,//muda a cor do fundo
        toolbarHeight: 180, //aumenta o tamanho do appBar
        ),
        body: Center( // deixa tudo centralizado
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${numero.toInt()}", style: TextStyle(fontSize: 40),),
              SizedBox(height: 40,),
              Row
              (mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(
                  width: 180,
                  height: 80,
                  child: 
                  ElevatedButton(onPressed: () {
                    aumentar();
                  }, child: Text("+", style: TextStyle(fontSize: 40),)),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  width: 180,
                  height: 80,
                  child: 
                  ElevatedButton(onPressed: () {
                    diminuir();
                  }, child: Text("-", style: TextStyle(fontSize: 40),)),
                ),
                SizedBox(width: 20,),
                SizedBox(
                  width: 180,
                  height: 80,
                  child: 
                  ElevatedButton(onPressed: () {
                    resetar();
                  }, child: Text("Reset", style: TextStyle(fontSize: 20),)),
                ),
              ],)
            ],
          )
        ),
      )
    );
  }
}