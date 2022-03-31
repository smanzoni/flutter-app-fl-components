import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {

final options = const ['Uruguay', 'Brasil', 'Argentina', 'Paraguay', 'Bolivia', 'Peru'];


  const ListView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1')
      ),
      body: ListView(
        children: [
          ...options.map((e) => ListTile( 
            title: Text(e),
            trailing: const Icon( Icons.arrow_forward_ios )
            )
          ).toList(),
          const Divider()
        ],
      ),
    );
  }
}