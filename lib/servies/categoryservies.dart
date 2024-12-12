import 'dart:convert';
import 'package:http/http.dart';
import 'package:shopirox/Model/Categorymodel.dart';
// import 'package:shopirox/Model/Categorymodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Categoryservies {
  String apiurl =
      "https://shopiroxapilocal.onrender.com/api/AdminBusinessCategory/Create";
  String apiurl1 =
      "https://shopiroxapilocal.onrender.com/api/AdminBusinessCategory/List";
  String token = "";
  // void setToken() async {}

  Future<void> createcategory(Categorymodel bb) async {
    print(bb.bcmTitle);
    var result = await post(Uri.parse(apiurl),
        headers: {'Content-Type': 'application/json'},
        body: (jsonEncode(bb.json())));
    print(result.body);
  }

  Future<List<Categorymodel>> getlist(Categorymodel mn) async {
    var ser = await SharedPreferences.getInstance();
    token = "bearer " + ser.getString("token").toString();
    print("token = " + token);
    var result = await get(
      Uri.parse(apiurl1),
      headers: {'Content-Type': 'application/json', 'Authorization': token},
    );

    print("data");
    List<dynamic> response = jsonDecode(result.body);
    List<Categorymodel> data =
        response.map((dynamic item) => Categorymodel.formjson(item)).toList();
    return data;
  }

  String apiurl2 =
      "https://shopiroxapilocal.onrender.com/api/AdminBusinessCategory/Edit";

  Future<void> Edit(Categorymodel mm) async {
    var result = await post(Uri.parse(apiurl2),
        headers: {'Content-Type': 'application/json'},
        body: (jsonEncode(mm.json())));
    print(result);
  }

  String apiurl3 =
      "https://shopiroxapilocal.onrender.com/api/AdminBusinessCategory/Delete";

  Future<void> Delete(Categorymodel del) async {
    var result = await post(Uri.parse(apiurl3),
        headers: {'Content-Type': 'application/json'},
        body: (jsonEncode(del.json())));
    print(result);
  }
}
