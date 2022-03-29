import 'package:flutter/material.dart';
import 'screens/locations/locations.dart';
import 'screens/location_detail/location_detail.dart';
import 'style.dart';

const LocationsRoute = '/';
const LocationDetailRoute = '/location_detail';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationDetail(1),
    );
  }
}



// https://www.youtube.com/watch?v=IxCeJS9yA8w  ir por aqui criar novas receitas
// https://www.youtube.com/watch?v=2-9f0BEyZCw answer bot