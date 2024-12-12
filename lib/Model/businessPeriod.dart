class Businessperiod {
  String? id;
  String? adminId;
  String? bpmTitle;
  String? bpmSeqNo;
  String? bpmActive;
  String? bpmIsDelete;

  Businessperiod(
      {this.id,
      this.adminId,
      this.bpmTitle,
      this.bpmSeqNo,
      this.bpmActive,
      this.bpmIsDelete});

  Map<String, dynamic> tojson() {
    return {
      "id": id,
      "adminId": adminId,
      "bpmTitle": bpmTitle,
      "bpmSeqNo": bpmSeqNo,
      "bpmActive": bpmActive,
      "bpmIsDelete": bpmIsDelete,
    };
  }

  factory Businessperiod.formjson(Map<String, dynamic> item) {
    return Businessperiod(
      id: item["id"],
      adminId: item["adminId"],
      bpmTitle: item["bpmTitle"],
      bpmSeqNo: item["bpmSeqNo"],
      bpmActive: item["bpmActive"],
      bpmIsDelete: item["bpmIsDelete"],
    );
  }
}
