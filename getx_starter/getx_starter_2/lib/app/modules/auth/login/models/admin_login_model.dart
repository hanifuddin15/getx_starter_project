// class AdminLoginResponse {
//   final int? status;
//   final String? message;
//   final String? accessToken;
//   final Admin? admin;

//   AdminLoginResponse({
//     this.status,
//     this.message,
//     this.accessToken,
//     this.admin,
//   });

//   factory AdminLoginResponse.fromMap(Map<String, dynamic>? map) {
//     if (map == null) return AdminLoginResponse();

//     return AdminLoginResponse(
//       status: map['status'] as int?,
//       message: map['message'] as String?,
//       accessToken: map['results']?['accessToken'] as String?,
//       admin: map['results']?['admin'] != null
//           ? Admin.fromMap(map['results']['admin'])
//           : null,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'status': status,
//       'message': message,
//       'results': {
//         'accessToken': accessToken,
//         'admin': admin?.toMap(),
//       },
//     };
//   }
// }

// class Admin {
//   final int? id;
//   final String? createdAt;
//   final String? updatedAt;
//   final String? mobile;
//   final String? shortDescription;
//   final String? profilePicture;
//   final User? user;

//   Admin({
//     this.id,
//     this.createdAt,
//     this.updatedAt,
//     this.mobile,
//     this.shortDescription,
//     this.profilePicture,
//     this.user,
//   });

//   factory Admin.fromMap(Map<String, dynamic>? map) {
//     if (map == null) return Admin();

//     return Admin(
//       id: map['id'] as int?,
//       createdAt: map['created_at'] as String?,
//       updatedAt: map['updated_at'] as String?,
//       mobile: map['mobile'] as String?,
//       shortDescription: map['short_description'] as String?,
//       profilePicture: map['profile_picture'] as String?,
//       user: map['user'] != null ? User.fromMap(map['user']) : null,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'created_at': createdAt,
//       'updated_at': updatedAt,
//       'mobile': mobile,
//       'short_description': shortDescription,
//       'profile_picture': profilePicture,
//       'user': user?.toMap(),
//     };
//   }
// }

// class User {
//   final String? email;
//   final String? firstName;
//   final String? lastName;
//   final Role? role;

//   User({
//     this.email,
//     this.firstName,
//     this.lastName,
//     this.role,
//   });

//   factory User.fromMap(Map<String, dynamic>? map) {
//     if (map == null) return User();

//     return User(
//       email: map['email'] as String?,
//       firstName: map['first_name'] as String?,
//       lastName: map['last_name'] as String?,
//       role: map['role'] != null ? Role.fromMap(map['role']) : null,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'email': email,
//       'first_name': firstName,
//       'last_name': lastName,
//       'role': role?.toMap(),
//     };
//   }
// }

// class Role {
//   final String? role;

//   Role({this.role});

//   factory Role.fromMap(Map<String, dynamic>? map) {
//     if (map == null) return Role();

//     return Role(
//       role: map['role'] as String?,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return {
//       'role': role,
//     };
//   }
// }
