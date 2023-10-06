import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import the url_launcher package

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  static final route = '/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            "EMIT Map",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 25.0, 8.0, 0.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  _launchURL(
                      'https://earth.jpl.nasa.gov/emit/data/data-portal/Greenhouse-Gases/');
                },
                child: Image.asset(
                  'assets/EMIT_map.jpg',
                  height: 180.0,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Text(
                    'What is that?',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '''• Greenhouse gases, such as methane, can have both warming effects on Earth and practical uses as fuel \n\n• PPM (parts per million) is a common measure for gas concentration, indicating the amount of a gas in one million parts of air. \n\n• PPM-M (parts per million per meter) is used to measure gas concentration along specific distances or paths, providing insights into gas distribution \n\n• Examples of gas measurement include methane concentration at 10 ppm and methane path-integrated concentration at 500 ppm-m. \n''',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  'Navigating Methane',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '''• Methane, an invisible and odorless gas, originates from various sources, including decaying organic matter, fossil fuels, and human activities\n\n • Methane contributes to global warming and climate change by trapping heat and altering weather patterns \n\n• High concentrations of methane pose safety risks, as it can ignite or cause explosions, and inadequate oxygen levels in the presence of methane can lead to health issues \n\n• To prevent dangerous situations, efforts should be made to maintain methane levels below 50,000 ppm in inhabited areas, Ensuring a minimum of 19.5% oxygen in the air is crucial for health\n''',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  'Navigating Carbon Dioxide',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                '''• Carbon dioxide (CO2) is a natural component of the atmosphere, released when we exhale and absorbed by plants. However, burning coal, oil, gas, wood, and trash significantly increases CO2 levels \n\n• The atmosphere typically contains around 0.04% CO2 or 400 ppm, which is considered safe for human breathing \n\n• Human activities have caused CO2 levels to rise to approximately 417 ppm, a 50% increase, primarily due to fossil fuel usage\n\n • Excessive CO2 in the air can harm human health when concentrations exceed 5,000 ppm, leading to symptoms like headaches and nausea. At levels exceeding 40,000 ppm, it can be fatal. Additionally, elevated CO2 contributes to the greenhouse effect, leading to global warming, climate change, and various environmental consequences\n''',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  "Loading phrases",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                  child: Text(
                "• EMIT stands for Earth Surface Mineral Dust Source Investigation\n\n• Greenhouse gases are gases that get trapped in the ozone layer, leading to increases in temprature\n\n• CO2, a greenhouse gas, stands for carbon dioxide gas\n\n• CH4, a greenhouse gas, stands for methane gas\n",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
