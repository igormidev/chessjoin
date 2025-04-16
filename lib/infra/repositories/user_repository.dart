import 'package:chessjoin/infra/models/user_info.dart';

class UserRepository {
  Future<UserInfo> getUser() async {
    return UserInfo(nome: 'Lucas', cpf: '123.456.789-00');
  }
}
