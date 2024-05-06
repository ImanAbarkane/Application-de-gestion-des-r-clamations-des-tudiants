import 'package:application_gestion_des_reclamations_pfe/Application%20admin/home/liste_enseignants.dart';
import 'package:application_gestion_des_reclamations_pfe/Application%20admin/home/liste_etudiants.dart';
import 'package:application_gestion_des_reclamations_pfe/Application%20admin/home/liste_reclamations.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigatorBarAdmin extends StatefulWidget {
  const NavigatorBarAdmin({super.key});

  @override
  State<NavigatorBarAdmin> createState() => _NavigatorBarEtudiantState();
}

class _NavigatorBarEtudiantState extends State<NavigatorBarAdmin> {
  List Screens = [
    Liste_des_reclamations(),
    Liste_des_etudiants(),
    ListeDesEnseignants(),
  ];
  int _selecedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Color.fromARGB(255, 28, 51, 128),
        height: 60,
        animationDuration: Duration(milliseconds: 300),
        index: _selecedIndex,
        onTap: (index) {
          setState(() {
            _selecedIndex = index;
          });
          print(index);
        },
        items: [
          Icon(Icons.article, size: 30,color: Colors.white,),
          Icon(Icons.school, size: 30,color: Colors.white,),
          Icon(
            Icons.group,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
      body: Screens[_selecedIndex],
    );
  }
}
