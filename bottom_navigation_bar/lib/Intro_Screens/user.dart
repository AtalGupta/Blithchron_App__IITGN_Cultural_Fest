import 'dart:convert';

class UserFields {
  static final String id = 'id';
  static final String name = 'name';
  static final String colstate = 'colstate';
  static final String colcity = 'colcity';
  static final String fireuid = 'fireuid';
  static final String email = 'email';
  static final String colname = 'colname';
  static final String age = 'age';
  static final String gender = 'gender';
  static final String mobnum = 'mobnum';

  static List<String> getFields() => [
        fireuid,
        id,
        name,
        email,
        colstate,
        colcity,
        colname,
        age,
        gender,
        mobnum,
      ];
}

class wlobbyfields {
  static final String number = 'number';
  static final String userid = 'userid';

  static List<String> getFields() => [number, userid];
}

class pollfields {
  static final String number = 'number';
  static final String name = 'name';
  static final String votecount = 'votecount';
  static final String control1 = 'control1';
  static final String control2 = 'control2';

  static List<String> getFields() => [
        number,
        name,
        votecount,
        control1,
        control2,
      ];
}

class User2 {
  final int? id;
  final String? fireuid;
  final String name;
  final String email;
  final String colstate;
  final String colcity;
  final String colname;
  final String age;
  final String gender;
  final String mobnum;

  const User2({
    this.id,
    this.fireuid,
    required this.age,
    required this.name,
    required this.email,
    required this.colstate,
    required this.colcity,
    required this.colname,
    required this.gender,
    required this.mobnum,
  });

  User2 copy({
    int? id,
    String? age,
    String? fireuid,
    String? name,
    String? email,
    String? colstate,
    String? colcity,
    String? colname,
    String? gender,
    String? mobnum,
  }) =>
      User2(
        id: id ?? this.id,
        age: age ?? this.age,
        fireuid: fireuid ?? this.fireuid,
        name: name ?? this.name,
        email: email ?? this.email,
        colstate: colstate ?? this.colstate,
        colcity: colcity ?? this.colcity,
        colname: colname ?? this.colname,
        gender: gender ?? this.gender,
        mobnum: mobnum ?? this.mobnum,
      );

  static User2 fromJSON(Map<String, dynamic> json) => User2(
        id: jsonDecode(json[UserFields.id]),
        // age: jsonDecode(json[UserFields.age]),
        age: json[UserFields.age],
        fireuid: json[UserFields.fireuid],
        name: json[UserFields.name],
        email: json[UserFields.email],
        colstate: json[UserFields.colstate],
        colcity: json[UserFields.colcity],
        colname: json[UserFields.colname],
        gender: json[UserFields.gender],
        mobnum: json[UserFields.mobnum],
      );

  Map<String, dynamic> toJson() => {
        // UserFields.id: id,
        UserFields.fireuid: fireuid,
        UserFields.id: id,
        UserFields.age: age,
        UserFields.name: name,
        UserFields.email: email,
        UserFields.colstate: colstate,
        UserFields.colcity: colcity,
        UserFields.colname: colname,
        UserFields.gender: gender,
        UserFields.mobnum: mobnum,
      };
}

class wlobby {
  final int? number;
  final int userid;

  const wlobby({
    this.number,
    required this.userid,
  });

  wlobby copy({
    int? number,
    int? userid,
  }) =>
      wlobby(
        number: number ?? this.number,
        userid: userid ?? this.userid,
      );

  static wlobby fromJSON(Map<String, dynamic> json) => wlobby(
        number: jsonDecode(json[wlobbyfields.number]),
        userid: jsonDecode(json[wlobbyfields.userid]),
      );

  Map<String, dynamic> toJson() => {
        wlobbyfields.number: number,
        wlobbyfields.userid: userid,
      };
}

class poll {
  final int? number;
  final String name;
  final int? votecount;
  final int? control1;
  final int? control2;
  const poll({
    this.number,
    required this.name,
    this.votecount,
    this.control1,
    this.control2,
  });

  poll copy({
    int? number,
    String? name,
    int? votecount,
    int? control1,
    int? control2,
  }) =>
      poll(
        number: number ?? this.number,
        name: name ?? this.name,
        votecount: votecount ?? this.votecount,
        control1: control1 ?? this.control1,
        control2: control2 ?? this.control2,
      );

  static poll fromJSON(Map<String, dynamic> json) => poll(
        number: jsonDecode(json[pollfields.number]),
        name: json[pollfields.name],
        votecount: jsonDecode(json[pollfields.votecount]),
        control1: jsonDecode(json[pollfields.control1]),
        control2: jsonDecode(json[pollfields.control2]),
      );

  Map<String, dynamic> toJson() => {
        pollfields.number: number,
        pollfields.name: name,
        pollfields.votecount: votecount,
        pollfields.control1: control1,
        pollfields.control2: control2,
      };
}
