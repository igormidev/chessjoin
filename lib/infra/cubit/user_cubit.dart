import 'package:chessjoin/infra/models/user_info.dart';
import 'package:chessjoin/infra/repositories/user_repository.dart';
import 'package:chessjoin/infra/states/user_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserCubit extends Cubit<UserState> {
  final UserRepository userRepository;

  UserCubit({required this.userRepository}) : super(UserStateLoading());

  Future<void> getUser() async {
    emit(UserStateLoading());
    try {
      final UserInfo userInfo = await userRepository.getUser();
      emit(UserStateWithData(userInfo: userInfo));
    } catch (e) {
      emit(UserStateWithError(errorMessage: 'Deu ruim!'));
    }
  }
}
