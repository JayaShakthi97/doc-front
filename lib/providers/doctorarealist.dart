import 'package:doc/models/arealist.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';


class ArealistProvider {
  Future<Arealist> getStatus() async {
    final http.Response response =
        await http.get('http://10.0.2.2:5000/book-my-doctor-eadd7/us-central1/GetDoctorsAreaList');
     Map<String, dynamic> map  = json.decode(response.body);
    List<dynamic> data = map["doctors"];
    print(data[0]["name"]);
    //print(responseData);
    return Arealist.fromJson(data[0]);
  }
}

// class ArealistProvider {
//   Future<Arealist> fetchStatus() async {
//     final response =await http.get('https://hpb.health.gov.lk/api/get-current-statistical');
// if (response.statusCode == 200) {
// //final Map<String, dynamic> responseData = json.decode(response.body);
// return Arealist.fromJson(json.decode(response.body));
//     } else {
//      // If that call was not successful, throw an error.
//     throw Exception('Failed to load post');
//   }
// }}


// Map<String, dynamic> map = json.decode(response.body);
// List<dynamic> data = map["dataKey"];
// print(data[0]["name"]);



// class StatusProvider {
//   Future<Situation> getStatus() async {
//     final http.Response response =
//         await http.get('https://hpb.health.gov.lk/api/get-current-statistical');
//     final Map<String, dynamic> responseData = json.decode(response.body);
//     print(responseData);
//     return Situation.fromJson(responseData['data']);
//   }
// }




// class ArealistProvider {
//   Future<List<Arealist>> getStatus() async {
//     final http.Response response =
//         await http.get('http://10.0.2.2:5000/book-my-doctor-eadd7/us-central1/GetDoctorsAreaList');
//      var jsonData  = json.decode(response.body);
//      List<Arealist> arealists = [];
//      for(var u in jsonData){
//         Arealist arealist = Arealist();
//         arealists.add(arealist);
//      }
//     print(arealists.length);
//   return arealists;
    
//   }
// }