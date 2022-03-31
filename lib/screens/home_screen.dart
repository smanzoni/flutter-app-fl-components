import 'package:fl_components/router/app_routes.dart';

import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0
      ),
      // ListView.separated define una lista de items separados por un componente  
      body: ListView.separated(
        //itemBuilder define el Widget que sera iterado
        itemBuilder: (context, index) => ListTile(
          title: Text( AppRoutes.menuOptions[index].routeName ),
          leading: Icon( AppRoutes.menuOptions[index].icon ),
          onTap: () {
           // final route = MaterialPageRoute(builder: (context) => const ListView1Screen() );
           //Navigator.push(context, route);
          
            //Desplegar el Widget 
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route );
          }
        ), 
        separatorBuilder: ( _, __) => const Divider(), //Widget separador de items del ListView (barrita separadora) 

        itemCount: AppRoutes.getAppRoutes().length //Cantidad de items de la lista separada
        ),
    );
  }
}