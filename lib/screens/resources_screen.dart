import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ResourcesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> disasters = [
    {
      'name': 'Learn About Wildfires',
      'icon': Icons.book,
      'details': '''
**Description**: Wildfires are uncontrolled fires that spread rapidly through vegetation, forests, and grasslands. They can be ignited by natural causes like lightning or human activities such as discarded cigarettes or arson.

**Causes**: 
- Lightning strikes
- Human activities (campfires, fireworks, arson)
- Volcanic eruptions

**How to Survive**:
- Stay indoors and close windows to avoid smoke inhalation.
- Have an evacuation plan and an emergency kit ready.
- Follow official evacuation orders.

**Minimize Damage**:
- Create a defensible space around your home by clearing flammable materials.
- Use fire-resistant materials for building and maintain a well-watered yard.

**Manage Damages**:
- Contact your insurance company for claims.
- Seek help from local disaster recovery services and community organizations.
- Source: [National Fire Protection Association](https://www.nfpa.org/).
''',
    },
    {
      'name': 'How to Handle Earthquakes',
      'icon': Icons.book,
      'details': '''
**Description**: Earthquakes are caused by the sudden release of energy in the Earth's crust, leading to ground shaking. They occur due to the movement of tectonic plates.

**Causes**:
- Tectonic plate movements along fault lines
- Volcanic activity

**How to Survive**:
- Drop to your hands and knees, cover your head and neck, and stay put.
- Stay indoors away from windows and heavy objects. If outside, move away from buildings and utility wires.

**Minimize Damage**:
- Secure heavy furniture and appliances.
- Retrofit your home to withstand seismic activity.

**Manage Damages**:
- Check for injuries and provide first aid if needed.
- Follow evacuation orders and contact emergency services if trapped.
- Source: [USGS Earthquake Hazards Program](https://earthquake.usgs.gov/).
''',
    },
    {
      'name': 'Understanding Tsunamis',
      'icon': Icons.book,
      'details': '''
**Description**: Tsunamis are large ocean waves caused by underwater seismic activity such as earthquakes or volcanic eruptions.

**Causes**:
- Earthquakes under the ocean
- Volcanic eruptions
- Underwater landslides

**How to Survive**:
- Move to higher ground immediately if you feel a strong earthquake or receive a tsunami warning.
- Avoid returning to the shore until authorities declare it safe.

**Minimize Damage**:
- Build structures with elevated foundations in tsunami-prone areas.
- Establish and practice evacuation routes for coastal communities.

**Manage Damages**:
- Follow emergency services' instructions for safety.
- Seek emergency relief services for recovery and rebuilding.
- Source: [NOAA Tsunami Program](https://www.tsunami.noaa.gov/).
''',
    },
    {
      'name': 'Volcanic Eruption Safety',
      'icon': Icons.book,
      'details': '''
**Description**: A volcanic eruption occurs when magma and gases escape from a volcano, potentially leading to lava flows, ash clouds, and pyroclastic flows.

**Causes**:
- Magma pressure build-up within a volcano
- Geological activity beneath the Earth’s surface

**How to Survive**:
- Evacuate the area if an eruption is imminent.
- Wear protective clothing and masks to avoid inhaling ash.

**Minimize Damage**:
- Build away from known volcanic hazards.
- Implement early warning systems and community emergency plans.

**Manage Damages**:
- Carefully clean ash from roofs and vehicles.
- Seek medical attention for respiratory issues caused by ash.
- Source: [USGS Volcano Hazards Program](https://volcanoes.usgs.gov/).
''',
    },
    {
      'name': 'Preparing for El Niño',
      'icon': Icons.book,
      'details': '''
**Description**: El Niño is a climate phenomenon characterized by the warming of ocean temperatures in the central and eastern tropical Pacific, affecting global weather patterns.

**Causes**:
- Oceanic and atmospheric interactions
- Changes in trade winds

**How to Survive**:
- Monitor weather forecasts for potential impacts such as heavy rains or droughts.
- Prepare for extreme weather conditions based on local forecasts.

**Minimize Damage**:
- Implement water conservation practices and manage agricultural resources.
- Prepare for potential flooding or drought-related impacts.

**Manage Damages**:
- Follow guidance from local authorities on emergency measures.
- Access available relief programs and support services for affected communities.
- Source: [NOAA El Niño Southern Oscillation (ENSO)](https://www.cpc.ncep.noaa.gov/products/analysis_monitoring/enso_update/).
''',
    },
    {
      'name': 'Dealing with La Niña',
      'icon': Icons.book,
      'details': '''
**Description**: La Niña is a climate pattern characterized by cooler-than-average ocean temperatures in the central and eastern tropical Pacific, affecting weather globally.

**Causes**:
- Oceanic and atmospheric circulation patterns
- Strengthening of trade winds

**How to Survive**:
- Monitor weather forecasts for potential impacts like heavy rains or colder temperatures.
- Adjust plans based on predicted weather changes.

**Minimize Damage**:
- Implement flood control measures and strengthen infrastructure to handle heavy rains.
- Prepare for potential disruptions in agriculture and water supply.

**Manage Damages**:
- Address immediate needs such as shelter and food.
- Collaborate with disaster response agencies and community groups for recovery efforts.
- Source: [NOAA La Niña](https://www.cpc.ncep.noaa.gov/products/analysis_monitoring/enso_lnk/enso_lnk.shtml).
''',
    },
    {
      'name': 'Tornado Safety Tips',
      'icon': Icons.book,
      'details': '''
**Description**: Tornadoes are rapidly rotating columns of air extending from a thunderstorm to the ground, causing significant damage with high winds.

**Causes**:
- Severe thunderstorms
- Specific atmospheric conditions

**How to Survive**:
- Seek shelter in a basement or interior room on the lowest floor.
- Avoid windows and protect yourself with heavy furniture or mattresses.

**Minimize Damage**:
- Reinforce your home’s structure, including roof and windows.
- Have an emergency plan with safe areas and supplies.

**Manage Damages**:
- Check for injuries and seek medical attention if needed.
- Contact local authorities and insurance companies for support and recovery.
- Source: [National Weather Service Tornado Safety](https://www.weather.gov/safety/tornado).
''',
    },
    {
      'name': 'Landslide Prevention',
      'icon': Icons.book,
      'details': '''
**Description**: Landslides involve the movement of rock, soil, and debris down a slope due to gravity, often triggered by heavy rainfall or other factors.

**Causes**:
- Heavy rainfall
- Earthquakes
- Volcanic eruptions
- Human activities (e.g., construction)

**How to Survive**:
- Move to higher ground if you hear or see signs of a landslide.
- Avoid areas prone to landslides and stay cautious during heavy rains.

**Minimize Damage**:
- Implement proper drainage systems and support structures to prevent erosion.
- Avoid building in high-risk areas and manage land use carefully.

**Manage Damages**:
- Seek emergency assistance if trapped or injured.
- Work with local authorities for cleanup and stabilization.
- Source: [USGS Landslide Hazards](https://www.usgs.gov/centers/landslide-hazards-science-center).
''',
    },
    {
      'name': 'Typhoon Readiness',
      'icon': Icons.book,
      'details': '''
**Description**: Typhoons are powerful tropical storms with strong winds and heavy rain, occurring in the Northwest Pacific Ocean.

**Causes**:
- Warm ocean waters
- Atmospheric conditions

**How to Survive**:
- Evacuate if instructed and move to higher ground or a designated shelter.
- Secure your home and prepare an emergency kit with essentials.

**Minimize Damage**:
- Reinforce your home’s structure and secure outdoor objects.
- Follow local evacuation and safety protocols.

**Manage Damages**:
- Assess and document damage for insurance purposes.
- Access relief and recovery services for rebuilding and assistance.
- Source: [JMA Typhoon Information](https://www.jma.go.jp/en/typh/).
''',
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: CustomAppBar(title: 'Educational Resources'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
          itemCount: disasters.length,
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemBuilder: (context, index) {
            final disaster = disasters[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DisasterDetailScreen(
                      name: disaster['name'],
                      details: disaster['details'] ?? '',
                      color: disaster['color'] ?? primaryColor,
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(12.0),
                  leading: Icon(disaster['icon'], color: primaryColor),
                  title: Text(
                    disaster['name'],
                    style: TextStyle(
                      fontSize: 17, 
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
class DisasterDetailScreen extends StatelessWidget {
  final String name;
  final String details;
  final Color color;

  DisasterDetailScreen({required this.name, required this.details, required this.color});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;

    return Scaffold(
      appBar: CustomAppBar(title: name),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  name,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RichText(
                    text: TextSpan(
                      children: _formatDetails(details, primaryColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<TextSpan> _formatDetails(String details, Color primaryColor) {
    final regex = RegExp(r'(\*\*.*?\*\*:)|(- .*?\n)|(\[.*?\]\(.*?\))', multiLine: true);
    final matches = regex.allMatches(details);

    List<TextSpan> spans = [];
    int start = 0;

    for (final match in matches) {
      if (match.start > start) {
        spans.add(TextSpan(
          text: details.substring(start, match.start),
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ));
      }
      if (match.group(0)!.startsWith('**')) {
        spans.add(TextSpan(
          text: match.group(0)!.replaceAll(RegExp(r'\*\*'), ''),
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: primaryColor,
          ),
        ));
      } else if (match.group(0)!.startsWith('- ')) {
        spans.add(TextSpan(
          text: match.group(0),
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ));
      } else if (match.group(0)!.startsWith('[')) {
        spans.add(TextSpan(
          text: match.group(0),
          style: TextStyle(
            color: primaryColor,
            fontSize: 16,
            decoration: TextDecoration.underline,
          ),
        ));
      }
      start = match.end;
    }
    if (start < details.length) {
      spans.add(TextSpan(
        text: details.substring(start),
        style: TextStyle(
          fontSize: 16, 
          color: Colors.black, 
        ),
      ));
    }

    return spans;
  }
}
