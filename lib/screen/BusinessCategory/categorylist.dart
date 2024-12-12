import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shopirox/Model/Categorymodel.dart';
import 'package:shopirox/screen/BusinessCategory/businesscategory.dart';
import 'package:shopirox/servies/categoryservies.dart';

class Categorylist extends StatefulWidget {
  const Categorylist({super.key});

  @override
  State<Categorylist> createState() => _CategorylistState();
}

class _CategorylistState extends State<Categorylist> {
  var cateservies = Categoryservies();
  late List<Categorymodel> catelist;
  List<Categorymodel> datalist = [];

  void initState() {
    // TODO: implement initState
    super.initState();
    Getlist();
  }

  void Getlist() async {
    catelist = await cateservies.getlist(Categorymodel());
    datalist = catelist;
    print(datalist.length);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category"),
        backgroundColor: Colors.blue[50],
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                  margin: EdgeInsets.only(top: 10, bottom: 10),
                  height: 50,
                  color: Colors.blue[50],
                  child: Column(
                    children: [
                      ListTile(
                        leading: Text(
                          datalist[index].bcmTitle!,
                          style: TextStyle(fontSize: 17),
                        ),
                        trailing: InkWell(
                          onTap: () {},
                          child: IconButton(
                              onPressed: () {
                                // showModalBottomSheet(
                                //   context: context,
                                //   builder: (context) {
                                //     return Container(
                                //       height: 150,
                                //       width: double.infinity,
                                //       child: ListTile(
                                //         leading: IconButton(
                                //             onPressed: () {
                                //               var edit = Categorymodel(
                                //                 id: datalist[index].id,
                                //                 adminId:
                                //                     datalist[index].adminId,
                                //                 bcmTitle:
                                //                     datalist[index].bcmTitle,
                                //                 bcmSlug:
                                //                     datalist[index].bcmSlug,
                                //                 bcmSeqNo:
                                //                     datalist[index].bcmSeqNo,
                                //                 bcmActive:
                                //                     datalist[index].bcmActive,
                                //                 bcmIsDelete:
                                //                     datalist[index].bcmIsDelete,
                                //               );
                                //               var response =
                                //                   cateservies.Edit(edit);
                                //               print(response);
                                //             },
                                //             icon: Icon(Icons.edit)),
                                //         // subtitle: Center(
                                //         //   child: TextField(
                                //         //     decoration: InputDecoration(
                                //         //         border: OutlineInputBorder()),
                                //         //   ),
                                //         // ),
                                //         trailing: IconButton(
                                //             onPressed: () {
                                //               var del = Categorymodel(
                                //                 id: datalist[index].id,
                                //                 adminId:
                                //                     datalist[index].adminId,
                                //                 bcmTitle:
                                //                     datalist[index].bcmTitle,
                                //                 bcmSlug:
                                //                     datalist[index].bcmSlug,
                                //                 bcmSeqNo:
                                //                     datalist[index].bcmSeqNo,
                                //                 bcmActive:
                                //                     datalist[index].bcmActive,
                                //                 bcmIsDelete:
                                //                     datalist[index].bcmIsDelete,
                                //               );
                                //               var response =
                                //                   cateservies.Delete(del);
                                //             },
                                //             icon: Icon(
                                //               Icons.delete,
                                //             )),
                                //       ),
                                //     );
                                //   },
                                // );
                                // var edit = Categorymodel(
                                //   id: datalist[index].id,
                                //   adminId: datalist[index].adminId,
                                //   bcmTitle: datalist[index].bcmTitle,
                                //   bcmSlug: datalist[index].bcmSlug,
                                //   bcmSeqNo: datalist[index].bcmSeqNo,
                                //   bcmActive: datalist[index].bcmActive,
                                //   bcmIsDelete: datalist[index].bcmIsDelete,
                                // );
                                // var response = cateservies.Edit(edit);
                                // print(edit);
                              },
                              icon: Icon(Icons.edit)),
                        ),
                      )
                    ],
                  ));
            },
            itemCount: datalist.length),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return Businesscategory();
              },
            );
          }),
    );
  }
}
