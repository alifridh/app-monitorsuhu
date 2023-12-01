import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

class LivingroomController extends GetxController {
  var sensorData = {}.obs;
  //TODO: Implement LivingroomController

  
  @override
  void onInit() {
    super.onInit();
    DatabaseReference databaseReference = FirebaseDatabase.instance.ref();
    databaseReference.onValue.listen((event) async {
      final dynamic value = event.snapshot.value;
      if (value != null && value is Map) {
        sensorData.value = Map<String, dynamic>.from(value);
      }
    });
  }

  void fetchSensorData() {}
}
