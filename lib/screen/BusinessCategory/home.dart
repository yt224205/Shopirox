import 'package:flutter/material.dart';
import 'package:shopirox/screen/BusinessCategory/businesscategory.dart';
import 'package:shopirox/screen/BusinessCategory/categorylist.dart';
import 'package:glass/glass.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var businsscate = Businesscategory();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        centerTitle: true,
        backgroundColor: Colors.blue[50],
      ),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Categorylist(),
                    ));
              },
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                height: 70,
                width: 370,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black54,
                        blurRadius: 2.5,
                        offset: Offset(1, 0.10))
                  ],
                ),
                child: ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Icon(
                        Icons.menu,
                        size: 25,
                      ),
                    ),
                    title: Text(
                      "Categories",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    subtitle: Text("Manage categories",
                        style: TextStyle(fontSize: 16)),
                    trailing: Icon(
                      Icons.chevron_right,
                      size: 30,
                    )),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.5,
                      offset: Offset(1, 0.10))
                ],
              ),
              child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Icon(Icons.business_rounded, size: 30),
                  ),
                  title: Text(
                    "Business Period",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  subtitle: Text("Manage business period",
                      style: TextStyle(fontSize: 16)),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.5,
                      offset: Offset(1, 0.10))
                ],
              ),
              child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Icon(Icons.menu, size: 30),
                  ),
                  title: Text(
                    "Business Type",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  subtitle: Text("Manage business type",
                      style: TextStyle(fontSize: 16)),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.5,
                      offset: Offset(1, 0.10))
                ],
              ),
              child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Icon(Icons.shopping_cart, size: 30),
                  ),
                  title: Text(
                    "Sell Option",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  subtitle: Text("Manage sell option",
                      style: TextStyle(fontSize: 16)),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.5,
                      offset: Offset(1, 0.10))
                ],
              ),
              child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Icon(Icons.menu, size: 30),
                  ),
                  title: Text(
                    "Country",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  subtitle:
                      Text("Manage country", style: TextStyle(fontSize: 16)),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.5,
                      offset: Offset(1, 0.10))
                ],
              ),
              child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Icon(Icons.settings_display_outlined, size: 30),
                  ),
                  title: Text(
                    "Dispute Subject",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  subtitle: Text("Manage dispute subject",
                      style: TextStyle(fontSize: 16)),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.5,
                      offset: Offset(1, 0.10))
                ],
              ),
              child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Icon(Icons.rocket, size: 30),
                  ),
                  title: Text(
                    "Dispute",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  subtitle:
                      Text("View dispute list", style: TextStyle(fontSize: 16)),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.5,
                      offset: Offset(1, 0.10))
                ],
              ),
              child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Icon(Icons.person, size: 30),
                  ),
                  title: Text(
                    "Customers",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  subtitle: Text("View customers list",
                      style: TextStyle(fontSize: 16)),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 30,
                  )),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              height: 70,
              width: 370,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.5,
                      offset: Offset(1, 0.10))
                ],
              ),
              child: ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    child: Icon(Icons.mobile_screen_share_rounded, size: 30),
                  ),
                  title: Text(
                    "Subscription",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                  subtitle: Text("Manage Subscription plan",
                      style: TextStyle(fontSize: 16)),
                  trailing: Icon(
                    Icons.chevron_right,
                    size: 30,
                  )),
            )
          ],
        ),
      )),
    );
  }
}
