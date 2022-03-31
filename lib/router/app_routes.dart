import 'package:flutter/material.dart';

import 'package:fl_components/models/menu_option.dart';
import 'package:fl_components/screens/screens.dart';


class AppRoutes {

  static const initialRoute = '/home';

  //Definimos las rutas medianteun objetos de tipo MenuOption
  static final menuOptions = <MenuOption>[
    //TODO: borrar home
    MenuOption(route: '/home',       routeName: 'Home Screen',     screen: const HomeScreen(),       icon: Icons.home_max_sharp),
    MenuOption(route: '/listview1',  routeName: 'Listview tipo 1', screen: const ListView1Screen(),  icon: Icons.list_alt_outlined),
    MenuOption(route: '/listview2',  routeName: 'Listview tipo 2', screen: const ListView2Screen(),  icon: Icons.list_alt_outlined),
    MenuOption(route: '/alert',      routeName: 'Alert',           screen: const AlertScreen(),      icon: Icons.warning_amber),
    MenuOption(route: '/card',       routeName: 'Card',            screen: const CardScreen(),       icon: Icons.card_membership_rounded),
  ];

  //Función de clase que devuelve las rutas en base al mapa "menuOptions"
  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    final Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll( { option.route : (BuildContext context) => option.screen } );
    }

    return appRoutes;
  }


  // static Map<String, Widget Function(BuildContext)> routes = {
  //       '/home'     : ( BuildContext context ) => const HomeScreen(),
  //       '/listview1': ( BuildContext context ) => const ListView1Screen(),
  //       '/listview2': ( BuildContext context ) => const ListView2Screen(),
  //       '/alert'    : ( BuildContext context ) =>  const AlertScreen(),
  //       '/card'     : ( BuildContext context ) => const CardScreen() 
  //     };


  static Route<dynamic> onGenerateRoute (RouteSettings settings) {   
        return MaterialPageRoute( 
          builder: (context) => const AlertScreen() 
        );
      }
}