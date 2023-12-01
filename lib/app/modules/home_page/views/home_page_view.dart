import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_page_controller.dart';
import 'package:app_monitorsuhu/app/modules/kitchen/views/kitchen_view.dart';
import 'package:app_monitorsuhu/app/modules/livingroom/views/livingroom_view.dart';
import 'package:app_monitorsuhu/app/modules/about_us/views/about_us_view.dart';

class HomePageView extends GetView<HomePageController> {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature Monitoring'),
        centerTitle: true,
      ),
      body: Center(
        child: Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to( KitchenView());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 246, 245, 245),
                side: const BorderSide(color: Colors.black, width: 2), 
              ),
              child: SizedBox(
                width: 150,
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 245, 245),
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/kitchen.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Kitchen',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(LivingroomView());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 246, 245, 245),
                side: const BorderSide(color: Colors.black, width: 2), 
              ),
              child: SizedBox(
                width: 150,
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 245, 245),
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/livingroom.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'Living Room',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(const AboutUsView());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 246, 245, 245),
                side: const BorderSide(color: Colors.black, width: 2), 
              ),
              child: SizedBox(
                width: 150,
                height: 200,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 75,
                        height: 75,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 246, 245, 245),
                          borderRadius: BorderRadius.circular(8),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/aboutus.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'About Us',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
