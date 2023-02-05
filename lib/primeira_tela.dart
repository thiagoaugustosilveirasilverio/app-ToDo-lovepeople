import 'package:app_todo/segunda_tela.dart';
import 'package:flutter/material.dart';

class PrimeiraTela extends StatefulWidget {
   PrimeiraTela({super.key});

  @override
  State<PrimeiraTela> createState() => _PrimeiraTelaState();
}

class _PrimeiraTelaState extends State<PrimeiraTela> {
 List tarefas = [];

  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Tarefas'),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()async
          {
           final tarefa = await Navigator.of(context).pushNamed(
              '/segunda'
              );
               tarefa;
                setState(() {
                  if(tarefa != null){
                    tarefas.add(tarefa);
                  }
                });
          },
           child: const Text('+'),
           ),
      body: ListView.builder(
        itemCount: tarefas.length,
        itemBuilder:((context, index) =>
         ListTile(title: Text('${index+1} - ${tarefas[index]}'),
         )
          ),
    )
    );
  }
}