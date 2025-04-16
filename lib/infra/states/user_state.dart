import 'package:chessjoin/infra/models/user_info.dart';

abstract class UserState {}

class UserStateLoading extends UserState {}

class UserStateWithError extends UserState {
  final String errorMessage;

  UserStateWithError({required this.errorMessage});
}

class UserStateWithData extends UserState {
  final UserInfo userInfo;
  UserStateWithData({required this.userInfo});
}
