import 'package:flutter/material.dart';
import 'disasters/flood_screen.dart';
import 'disasters/fire_screen.dart';
import 'disasters/earthquake_screen.dart';
import 'disasters/tsunami_screen.dart';
import 'disasters/volcanic_eruption_screen.dart';
import 'disasters/el_nino_screen.dart';
import 'disasters/la_nina_screen.dart';
import 'disasters/tornado_screen.dart';
import 'disasters/landslide_screen.dart';
import 'disasters/typhoon_screen.dart';

class PlanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disaster Plans'),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(16.0),
        crossAxisCount: 2,
        crossAxisSpacing: 16.0, 
        mainAxisSpacing: 16.0,
        children: [
          _buildDisasterCard(
            context,
            'Flood',
            Icons.water_damage,
            FloodScreen(),
          ),
          _buildDisasterCard(
            context,
            'Fire',
            Icons.whatshot, 
            FireScreen(),
          ),
          _buildDisasterCard(
            context,
            'Earthquake',
            Icons.spatial_audio_off, 
            EarthquakeScreen(),
          ),
          _buildDisasterCard(
            context,
            'Tsunami',
            Icons.tsunami, 
            TsunamiScreen(),
          ),
          _buildDisasterCard(
            context,
            'Volcanic Eruption',
            Icons.volcano, 
            VolcanicEruptionScreen(),
          ),
          _buildDisasterCard(
            context,
            'El Niño',
            Icons.wb_sunny,
            ElNinoScreen(),
          ),
          _buildDisasterCard(
            context,
            'La Niña',
            Icons.wb_cloudy,
            LaNinaScreen(),
          ),
          _buildDisasterCard(
            context,
            'Tornado',
            Icons.storm, 
            TornadoScreen(),
          ),
          _buildDisasterCard(
            context,
            'Landslide',
            Icons.landslide, 
            LandslideScreen(),
          ),
          _buildDisasterCard(
            context,
            'Typhoon',
            Icons.cyclone, 
            TyphoonScreen(),
          ),
        ],
      ),
    );
  }

  Widget _buildDisasterCard(
    BuildContext context,
    String title,
    IconData icon,
    Widget destination,
  ) {
    return Card(
      elevation: 5, 
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0), 
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: 30, 
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 36, 
                ),
              ),
              SizedBox(height: 8), 
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16, 
                ),
                textAlign: TextAlign.center, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}
