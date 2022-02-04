import 'package:geolocator/geolocator.dart';

class Location{
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async{
    LocationPermission permission = await Geolocator.requestPermission();
      
      try {
        print("Hi");
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      print("Hiiiii");
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }

      // try{
      //   while(permission!=LocationPermission.whileInUse){
      //     permission = await Geolocator.requestPermission();
      //   }
      //   print("Hi");
      //   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      //   print(position);
      //   // latitude=position.latitude;
      //   // longitude=position.longitude;
      //   // print(position.latitude);
      //   // print(position.longitude);
      //   print("end");
      //   return position;
      // }catch(e){
      //   print(e);
      // }
  }
}