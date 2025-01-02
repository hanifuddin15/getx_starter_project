import 'package:getx_starter_2/app/enum/user_role.dart';

UserRole getUserRoleEnumFromType(String roleType) {
  switch (roleType.toUpperCase()) {
    case 'TEACHER':
      return UserRole.TEACHER;
    case 'STUDENT':
      return UserRole.STUDENT;
    default:
      return UserRole.TEACHER;
  }
}
