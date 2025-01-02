// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ProfileDetailsModel {
  int? id;
  int? user_id;
  String? nid;
  String? country_code;
  String? mobile;
  String? present_address;
  String? gender;
  String? docType;
  String? profile_pic;
  String? profile_picture;
  String? file;
  String? doc_no;
  String? short_description;
  int? year_of_experience;
  String? created_at;
  String? updated_at;
  UserModel? user;
  ProfileDetailsModel({
    this.id,
    this.user_id,
    this.nid,
    this.country_code,
    this.mobile,
    this.present_address,
    this.gender,
    this.docType,
    this.profile_pic,
    this.profile_picture,
    this.file,
    this.doc_no,
    this.short_description,
    this.year_of_experience,
    this.created_at,
    this.updated_at,
    this.user,
  });

  ProfileDetailsModel copyWith({
    int? id,
    int? user_id,
    String? nid,
    String? country_code,
    String? mobile,
    String? present_address,
    String? gender,
    String? docType,
    String? profile_pic,
    String? profile_picture,
    String? file,
    String? short_description,
    int? year_of_experience,
    String? doc_no,
    String? created_at,
    String? updated_at,
    UserModel? user,
  }) {
    return ProfileDetailsModel(
      id: id ?? this.id,
      user_id: user_id ?? this.user_id,
      nid: nid ?? this.nid,
      country_code: country_code ?? this.country_code,
      mobile: mobile ?? this.mobile,
      present_address: present_address ?? this.present_address,
      gender: gender ?? this.gender,
      docType: docType ?? this.docType,
      profile_pic: profile_pic ?? this.profile_pic,
      profile_picture: profile_picture ?? this.profile_picture,
      file: file ?? this.file,
      doc_no: doc_no ?? this.doc_no,
      short_description: short_description ?? this.short_description,
      year_of_experience: year_of_experience ?? this.year_of_experience,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'user_id': user_id,
      'mobile': mobile,
      'nid': nid,
      'country_code': country_code,
      'present_address': present_address,
      'gender': gender,
      'docType': docType,
      'profile_pic': profile_pic,
      'profile_picture': profile_picture,
      'file': file,
      'short_description': short_description,
      'year_of_experience': year_of_experience,
      'doc_no': doc_no,
      'created_at': created_at,
      'updated_at': updated_at,
      'user': user?.toMap(),
    };
  }

  factory ProfileDetailsModel.fromMap(Map<String, dynamic> map) {
    return ProfileDetailsModel(
      id: map['id'] != null ? map['id'] as int : null,
      user_id: map['user_id'] != null ? map['user_id'] as int : null,
      nid: map['nid'] != null ? map['nid'] as String : null,
      country_code:
          map['country_code'] != null ? map['country_code'] as String : null,
      mobile: map['mobile'] != null ? map['mobile'] as String : null,
      present_address: map['present_address'] != null
          ? map['present_address'] as String
          : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      docType: map['docType'] != null ? map['docType'] as String : null,
      profile_picture: map['profile_picture'] != null
          ? map['profile_picture'] as String
          : null,
      profile_pic:
          map['profile_pic'] != null ? map['profile_pic'] as String : null,
      file: map['file'] != null ? map['file'] as String : null,
      doc_no: map['doc_no'] != null ? map['doc_no'] as String : null,
      short_description: map['short_description'] != null
          ? map['short_description'] as String
          : null,
      year_of_experience: map['year_of_experience'] != null
          ? map['year_of_experience'] as int
          : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      user: map['user'] != null
          ? UserModel.fromMap(map['user'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProfileDetailsModel.fromJson(String source) =>
      ProfileDetailsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ProfileDetailsModel(id: $id, user_id: $user_id, nid: $nid, country_code: $country_code, mobile: $mobile, present_address: $present_address, gender: $gender, docType: $docType, profile_pic: $profile_pic, file: $file, doc_no: $doc_no, created_at: $created_at, updated_at: $updated_at, user: $user)';
  }

  @override
  bool operator ==(covariant ProfileDetailsModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.user_id == user_id &&
        other.mobile == mobile &&
        other.nid == nid &&
        other.country_code == country_code &&
        other.present_address == present_address &&
        other.gender == gender &&
        other.docType == docType &&
        other.profile_pic == profile_pic &&
        other.file == file &&
        other.doc_no == doc_no &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.user == user;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        user_id.hashCode ^
        mobile.hashCode ^
        nid.hashCode ^
        country_code.hashCode ^
        present_address.hashCode ^
        gender.hashCode ^
        docType.hashCode ^
        profile_pic.hashCode ^
        file.hashCode ^
        doc_no.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        user.hashCode;
  }
}

class UserModel {
  int? id;
  String? first_name;
  String? last_name;
  String? status;
  String? email;
  UserModel(
      {this.id, this.first_name, this.last_name, this.status, this.email});

  UserModel copyWith(
      {int? id,
      String? first_name,
      String? last_name,
      String? status,
      String? email}) {
    return UserModel(
        id: id ?? this.id,
        first_name: first_name ?? this.first_name,
        last_name: last_name ?? this.last_name,
        status: status ?? this.status,
        email: email ?? this.email);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'status': status,
      'email': email
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] != null ? map['id'] as int : null,
      first_name:
          map['first_name'] != null ? map['first_name'] as String : null,
      last_name: map['last_name'] != null ? map['last_name'] as String : null,
      status: map['status'] != null ? map['status'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, first_name: $first_name, last_name: $last_name, status: $status, email: $email)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.status == status &&
        other.email == email;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        status.hashCode ^
        email.hashCode;
  }
}
