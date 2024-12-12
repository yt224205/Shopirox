import 'package:flutter/material.dart';
import 'package:shopirox/Model/adminmodel.dart';
import 'package:shopirox/screen/BusinessCategory/businesscategory.dart';
import 'package:shopirox/screen/BusinessCategory/home.dart';
// import 'package:shopirox/Model/adminmodel.dart';
import 'package:shopirox/Adminservies.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var Name = TextEditingController();
  var Password = TextEditingController();
  var admservies = Adminservies();
  var responsemsg = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Center(
              child: Text(
                "Shopirox",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(),
              width: 300,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Email",
                            style: TextStyle(
                              fontSize: 13,
                            ))),
                    controller: Name,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    controller: Password,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () async {
                        var log = Admin(
                            UserName: Name.text, UserPassword: Password.text);
                        var response = await admservies.createlogin(log);
                        print(response.responseMessage);
                        if (response.responseMessage == "Success") {
                          var ser = await SharedPreferences.getInstance();
                          ser.setString("user", response.id.toString());
                          ser.setString("token", response.token!);
                          print("set sheredpreference");
                          print(ser);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Home(),
                              ));
                        } else {
                          var demo = new SnackBar(content: Text("Invalid"));
                          action:
                          SnackBarAction(label: "Close", onPressed: () {});
                          Duration(seconds: 1);
                          ScaffoldMessenger.of(context).showSnackBar(demo);
                        }
                        setState(() {});
                      },
                      child: Text("Login")),
                  Container(
                    width: 350,
                    height: 20,
                    child: Divider(),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?"),
                      Text(
                        "Sign Up.",
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
