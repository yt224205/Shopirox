import 'dart:convert';
import 'package:http/http.dart';
import 'package:shopirox/Model/adminmodel.dart';
import 'package:shopirox/Model/tokenmodel.dart';

class Adminservies {
  String apiurl = "https://shopiroxapilocal.onrender.com/api/Admin/Login";

  Future<Tokenmodel> createlogin(Admin login) async {
    var result = await post(Uri.parse(apiurl),
        headers: {'Content-Type': 'application/json'},
        body: (jsonEncode(login.json())));
    print(result.body);
    var data = Tokenmodel.formjson(jsonDecode(result.body));
    print(data.responseMessage);
    return data;
  }
}
