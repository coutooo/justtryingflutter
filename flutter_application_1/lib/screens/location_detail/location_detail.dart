import 'package:flutter/material.dart';
import 'image_banner.dart';
import 'text_section.dart'; 
import '../../models/location.dart';
import '../locations/locations.dart';
import 'package:image_picker/image_picker.dart';

class LocationDetail extends StatelessWidget {
  final int _locationID;

  LocationDetail(this._locationID);

  @override
  Widget build(BuildContext context) {  
    // simply fetch the first location we have
    final location = Location.fetchByID(_locationID);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 96, 185, 158),
        title: Text(location.name),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ImageBanner(location.imagePath),
          ]..addAll(textSections(location))),
          drawer:  Drawer(      // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
            child: Material(
              color: Color.fromARGB(255, 96, 185, 158),
              child: ListView(
                // Important: Remove any padding from the ListView.
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                    image: AssetImage("lib/assets/images/food.jpg"),
                      fit: BoxFit.fill)
                    ),
                    child: Text('Receitas'),
                  ),
                  ListTile(
                    title: const Text('Brigadeiros de Chocolate'),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => LocationDetail(1)));
                    },
                  ),
                  ListTile(
                    title: const Text('Bacalhau com Natas'),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => LocationDetail(2)));
                      //Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: const Text('Carne de Porco à Alentejana'),
                    onTap: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => LocationDetail(3)));
                    },
                  ),
                  ListTile(
                    title: const Text('Adicionar Receita...'),
                    //onTap: () {
                    //  Navigator.push(context,MaterialPageRoute(builder: (context) => LocationDetail(3)));
                    //},
                  ),
                ],
              ),
            ),
          ),
        );  
  }

  List<Widget> textSections(Location location) {
    return location.facts
        .map((fact) => TextSection(fact.title, fact.text))
        .toList();
  }
}