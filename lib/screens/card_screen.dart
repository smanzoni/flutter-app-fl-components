import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Card Widget") 
        ),

      body: ListView(
        // Añadir padding entre las cards
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),

        children: [
          Card(
            child: Column(
              children: const [
                ListTile(
                  // Icono del ListTile
                  leading: Icon( Icons.photo_album_outlined, color: AppTheme.primaryColor ),
                  
                  // Titulo
                  title: Text( "Titulo" ),
                  
                  // Subtitulo/parrafo
                  subtitle: Text("Deserunt ipsum dolore reprehenderit minim elit culpa proident ea aliqua excepteur duis aute esse. Ut velit elit dolor est veniam. Cillum ullamco ex aliqua elit consequat exercitation nostrud elit Lorem veniam ea pariatur."),
                )
              ]),
          )
      ]),
    );
  }
}