class DataModel {
  int user_id;
  String firstName;
  String lastName;
  String phoneNumber;
  String emailAddress;

  DataModel({required this.user_id,
    required this.firstName,
    required this.lastName,
    required this.emailAddress,
    required this.phoneNumber});

  factory DataModel.fromJson(Map<String, dynamic> json)
  {
    return DataModel(user_id: json['userId'],
        firstName: json['firstName'],
        lastName: json['lastName'],
        emailAddress: json['emailAddress'],
        phoneNumber: json['phoneNumber']);
  }
}
