import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopirox/Model/Categorymodel.dart';
import 'package:shopirox/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopirox/screen/BusinessCategory/businesscategory.dart';
// import 'package:shopirox/Model/Categorymodel.dart';
import 'package:shopirox/servies/categoryservies.dart';

class Businesscategory extends StatefulWidget {
  const Businesscategory({super.key});

  @override
  State<Businesscategory> createState() => _BusinesscategoryState();
}

class _BusinesscategoryState extends State<Businesscategory> {
  var title = TextEditingController();
  var seqNo = TextEditingController();
  var category = Categorymodel();
  var cateservies = Categoryservies();
  String? userid;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getdata();
  }

  void getdata() async {
    var data = await SharedPreferences.getInstance();
    userid = data.getString("user");
    print(data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Create Category"),
        backgroundColor: Colors.blue[50],
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(10, 50, 10, 50),
          height: 500,
          width: 300,
          // color: Colors.red,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Title")),
                controller: title,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("SeqNo")),
                controller: seqNo,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () async {
                    var mn = Categorymodel(
                        id: "000000000000000000000000",
                        adminId: userid.toString(),
                        bcmTitle: title.text,
                        bcmSlug: title.text,
                        bcmSeqNo: 0,
                        bcmActive: true,
                        bcmIsDelete: false);

                    var result = await cateservies.createcategory(mn);

                    setState(() {});
                  },
                  child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
