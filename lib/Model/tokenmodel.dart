class Tokenmodel {
  String? id;
  String? name;
  String? email;
  String? token;
  String? responseMessage;

  Tokenmodel(
      {this.id, this.name, this.email, this.token, this.responseMessage});

  Map<String, dynamic> json() {
    return {
      "id": id,
      "name": name,
      "email": email,
      "token": token,
      "responseMessage": responseMessage
    };
  }

  factory Tokenmodel.formjson(Map<String, dynamic> item) {
    return Tokenmodel(
        id: item["id"],
        name: item["name"],
        email: item["email"],
        token: item["token"],
        responseMessage: item["responseMessage"]);
  }
}
