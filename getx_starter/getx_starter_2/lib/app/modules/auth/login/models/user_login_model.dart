class LoginResponse {
  final int? status;
  final String? accessToken;
  final User? user;
  final String? message;

  LoginResponse({
    this.status,
    this.accessToken,
    this.user,
    this.message,
  });

  factory LoginResponse.fromMap(Map<String, dynamic>? map) {
    if (map == null) return LoginResponse();

    return LoginResponse(
      status: map['status'] as int?,
      accessToken: map['results']?['accessToken'] as String?,
      user: map['results']?['user'] != null
          ? User.fromMap(map['results']['user'] as Map<String, dynamic>?)
          : null,
      message: map['message'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'results': {
        'accessToken': accessToken,
        'user': user?.toMap(),
      },
      'message': message,
    };
  }
}

class User {
  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final Role? role;
  final Students? students;
  final Teacher? teacher;

  User(
      {this.id,
      this.email,
      this.firstName,
      this.lastName,
      this.role,
      this.students,
      this.teacher});

  factory User.fromMap(Map<String, dynamic>? map) {
    if (map == null) return User();

    return User(
      id: map['id'] as int?,
      email: map['email'] as String?,
      firstName: map['first_name'] as String?,
      lastName: map['last_name'] as String?,
      role: map['role'] != null
          ? Role.fromMap(map['role'] as Map<String, dynamic>?)
          : null,
      students: map['Student'] != null
          ? Students.fromMap(map['Student'] as Map<String, dynamic>?)
          : null,
      teacher: map['Teacher'] != null
          ? Teacher.fromMap(map['Teacher'] as Map<String, dynamic>?)
          : null,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'first_name': firstName,
      'last_name': lastName,
      'role': role?.toMap(),
      'Student': students?.toMap(),
      'Teacher': teacher?.toMap()
    };
  }
}

class Students {
  final int? id;
  final int? userId;
  final String? nid;
  final String? mobile;
  final String? presentAddress;
  final String? gender;
  final String? docType;
  final String? profilePic;
  final String? file;
  final String? docNo;
  final String? profilePicture;
  final String? createdAt;
  final String? updatedAt;

  Students({
    this.id,
    this.userId,
    this.nid,
    this.mobile,
    this.presentAddress,
    this.gender,
    this.docType,
    this.profilePic,
    this.file,
    this.docNo,
    this.profilePicture,
    this.createdAt,
    this.updatedAt,
  });

  factory Students.fromMap(Map<String, dynamic>? map) {
    if (map == null) return Students();

    return Students(
      id: map['id'] as int?,
      userId: map['user_id'] as int?,
      nid: map['nid'] as String?,
      mobile: map['mobile'] as String?,
      presentAddress: map['present_address'] as String?,
      gender: map['gender'] as String?,
      docType: map['docType'] as String?,
      profilePic: map['profile_pic'] as String?,
      file: map['file'] as String?,
      docNo: map['doc_no'] as String?,
      profilePicture: map['profile_picture'] as String?,
      createdAt: map['created_at'] as String?,
      updatedAt: map['updated_at'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user_id': userId,
      'nid': nid,
      'mobile': mobile,
      'present_address': presentAddress,
      'gender': gender,
      'docType': docType,
      'profile_pic': profilePic,
      'file': file,
      'doc_no': docNo,
      'profile_picture': profilePicture,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}

class Role {
  final String? role;

  Role({this.role});

  factory Role.fromMap(Map<String, dynamic>? map) {
    if (map == null) return Role();

    return Role(
      role: map['role'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'role': role,
    };
  }
}

class Teacher {
  final int? id;
  final int? userId;
  final String? mobile;
  final String? shortDescription;
  final int? yearOfExperience;
  final String? profilePicture;
  final String? createdAt;
  final String? updatedAt;

  Teacher({
    this.id,
    this.userId,
    this.mobile,
    this.shortDescription,
    this.yearOfExperience,
    this.profilePicture,
    this.createdAt,
    this.updatedAt,
  });

  factory Teacher.fromMap(Map<String, dynamic>? map) {
    if (map == null) return Teacher();

    return Teacher(
      id: map['id'] as int?,
      userId: map['user_id'] as int?,
      mobile: map['mobile'] as String?,
      shortDescription: map['short_description'] as String?,
      yearOfExperience: map['year_of_experience'] as int?,
      profilePicture: map['profile_picture'] as String?,
      createdAt: map['created_at'] as String?,
      updatedAt: map['updated_at'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'user_id': userId,
      'mobile': mobile,
      'short_description': shortDescription,
      'year_of_experience': yearOfExperience,
      'profile_picture': profilePicture,
      'created_at': createdAt,
      'updated_at': updatedAt,
    };
  }
}
