import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:fl_components/router/app_routes.dart';






void main() => runApp( const MyApp());

//Clase inicial de la aplicación
class MyApp extends StatelessWidget {
  
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //Titulo de pestaña web
      title: 'Material App',
      //home:  ListView2Screen(),

      //sustituimos la propiedad "home" con la propiedad "initialRoute"
      initialRoute: AppRoutes.initialRoute, 

      //definimos las rutas de nuestra aplicación
      routes: AppRoutes.getAppRoutes(), 

      //Como generar una ruta dinámica para cuando no encuentra la ruta especificada en el navigator
      onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),

      theme: AppTheme.lightTheme
    );
  }
}