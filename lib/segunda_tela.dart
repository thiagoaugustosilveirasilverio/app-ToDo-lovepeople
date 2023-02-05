
import 'dart:js_util';

import 'package:flutter/material.dart';

class SegundaTela extends StatelessWidget {
 SegundaTela({super.key});

final controlerfuncao = TextEditingController();
final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),

      ),
       body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(decoration: InputDecoration(hintText: 'Digite a nova tarefa'),
              controller: controlerfuncao,
              validator: (value) {if(value!.isEmpty)
              {return 'campo obrigatório';} return null;
              },
              ),
              Padding(padding: EdgeInsets.all(10.0),
              ),
              ElevatedButton(
                onPressed: () {
                  if(formKey.currentState!.validate()){
                    var palavra = controlerfuncao.text;
                  Navigator.pop(context, palavra);
                  }
                },
                 child: Text('Salvar')
                 ),
            ],
          ),
          ),
           ),
            ),
    );
  }
  }
