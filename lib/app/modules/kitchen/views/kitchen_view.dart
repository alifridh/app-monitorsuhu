import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/kitchen_controller.dart';

class KitchenView extends GetView<KitchenController> {
  final KitchenController realtimeController = Get.put(KitchenController());
   KitchenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Memperbarui data sensor sebelum mengambil nilai hum1
    controller.fetchSensorData();

    // Menarik nilai hum1 dari sensorData untuk temperatureValue
    

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kitchen'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            _buildTemperature('Temperature', 'assets/images/celcius.png'),
            _buildHumidity('Humidity', 'assets/images/humidity.png'),
          ],
        ),
      ),
    );
  }

  Widget _buildTemperature(String text, String imagePath) {
    var temperatureValue = realtimeController.sensorData['dht11']?['temp1'] ?? 'N/A';
    return Container(
      width: 190,
      height: 260,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 246, 245, 245),
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 245, 245),
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
             Text(
              '$temperatureValue',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHumidity(String text, String imagePath) {
    var humidityValue = realtimeController.sensorData['dht11']?['hum1'] ?? 'N/A';
    return Container(
      width: 190,
      height: 260,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 246, 245, 245),
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 246, 245, 245),
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
             Text(
              '$humidityValue',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
