class UserModel {
  String? uId;
  String? email;
  String? name;
  String? grade;
  UserModel({
    this.uId,
    this.email,
    this.name,
    this.grade});
  UserModel.fromJson(Map<String, dynamic> json) {
    uId = json['uId'];
    email = json['email'];
    name = json['name'];
    grade = json['grade'];
  }
  Map<String,dynamic>toMap(){
    return {
      'uId':uId,
      'email':email,
      'name':name,
      'grade':grade
    };

  }
}
