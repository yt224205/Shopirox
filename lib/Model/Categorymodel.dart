class Categorymodel {
  String? id;
  String? adminId;
  String? bcmTitle;
  String? bcmSlug;
  int? bcmSeqNo;
  bool? bcmActive;
  bool? bcmIsDelete;

  Categorymodel({
    this.id,
    this.adminId,
    this.bcmTitle,
    this.bcmSlug,
    this.bcmSeqNo,
    this.bcmActive,
    this.bcmIsDelete,
  });

  Map<String, dynamic> json() {
    return {
      "id": id,
      "adminId": adminId,
      "bcmTitle": bcmTitle,
      "bcmSlug": bcmSlug,
      "bcmSeqNo": bcmSeqNo,
      "bcmActive": bcmActive,
      "bcmIsDelete": bcmIsDelete,
    };
  }

  factory Categorymodel.formjson(Map<String, dynamic> item) {
    return Categorymodel(
      id: item["id"],
      adminId: item["adminId"],
      bcmTitle: item["bcmTitle"],
      bcmSlug: item["bcmSlug"],
      bcmSeqNo: item["bcmSeqNo"],
      bcmActive: item["bcmActive"],
      bcmIsDelete: item["bcmIsDelete"],
    );
  }
}
