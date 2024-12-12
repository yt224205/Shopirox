class Admin {
  String? UserName;
  String? UserPassword;

  Admin({required this.UserName, required this.UserPassword});

  Map<String, dynamic> json() {
    return {"username": UserName, "password": UserPassword};
  }

  factory Admin.formjson(Map<String, dynamic> item) {
    return Admin(UserName: item["username"], UserPassword: item['password']);
  }
}
