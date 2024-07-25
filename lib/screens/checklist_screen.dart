import 'package:flutter/material.dart';
import 'checklist/flood_check.dart';
import 'checklist/fire_check.dart';
import 'checklist/earthquake_check.dart';
import 'checklist/tsunami_check.dart';
import 'checklist/volcanic_eruption_check.dart';
import 'checklist/el_nino_check.dart';
import 'checklist/la_nina_check.dart';
import 'checklist/tornado_check.dart';
import 'checklist/landslide_check.dart';
import 'checklist/typhoon_check.dart';

class ChecklistScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disaster Checklist'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildDisasterCard(
              context,
              'Flood',
              Icons.water_damage,
              FloodChecklistScreen(),
            ),
            _buildDisasterCard(
              context,
              'Fire',
              Icons.whatshot,
              FireChecklistScreen(),
            ),
            _buildDisasterCard(
              context,
              'Earthquake',
              Icons.spatial_audio_off,
              EarthquakeChecklistScreen(),
            ),
            _buildDisasterCard(
              context,
              'Tsunami',
              Icons.tsunami,
              TsunamiChecklistScreen(),
            ),
            _buildDisasterCard(
              context,
              'Volcanic Eruption',
              Icons.volcano,
              VolcanicEruptionChecklistScreen(),
            ),
            _buildDisasterCard(
              context,
              'El Niño',
              Icons.wb_sunny,
              ElNinoChecklistScreen(),
            ),
            _buildDisasterCard(
              context,
              'La Niña',
              Icons.wb_cloudy,
              LaNinaChecklistScreen(),
            ),
            _buildDisasterCard(
              context,
              'Tornado',
              Icons.storm,
              TornadoChecklistScreen(),
            ),
            _buildDisasterCard(
              context,
              'Landslide',
              Icons.landslide,
              LandslideChecklistScreen(),
            ),
            _buildDisasterCard(
              context,
              'Typhoon',
              Icons.cyclone,
              TyphoonChecklistScreen(),
            ),
          ],
        ),
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
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
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
                radius: 32,
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              SizedBox(height: 12),
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black87,
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
