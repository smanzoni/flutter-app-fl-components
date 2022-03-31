import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {

final options = const ['Uruguay', 'Brasil', 'Argentina', 'Paraguay', 'Bolivia', 'Peru'];


  const ListView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
        elevation: 0, //Sombra del appBar
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile( 
          title: Text( options[index] ), 
          trailing: const Icon( Icons.arrow_forward_ios, color: Colors.indigo ),
          onTap: () { 
            final pais = options[index];
            print(pais);
          } ),
        separatorBuilder:  ( _ , __ ) => const Divider() , 
        itemCount: options.length),
        
    );
  }
}