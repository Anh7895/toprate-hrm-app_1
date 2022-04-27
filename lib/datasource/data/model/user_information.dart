class UserInformation {
  String? id;
  String? username;
  String? fullName;
  String? firstName;
  String? lastName;
  String? avatar;
  String? email;
  String? googleId;
  String? isLocked;
  String? uuid;

  UserInformation(
      {this.id,
        this.username,
        this.fullName,
        this.firstName,
        this.lastName,
        this.avatar,
        this.email,
        this.googleId,
        this.isLocked,
        this.uuid});

  UserInformation.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    fullName = json['full_name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
    email = json['email'];
    googleId = json['google_id'];
    isLocked = json['is_locked'];
    uuid = json['uuid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['full_name'] = this.fullName;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['avatar'] = this.avatar;
    data['email'] = this.email;
    data['google_id'] = this.googleId;
    data['is_locked'] = this.isLocked;
    data['uuid'] = this.uuid;
    return data;
  }
}