// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserInfo {
  final String nome;
  final String cpf;
  const UserInfo({required this.nome, required this.cpf});

  UserInfo copyWith({String? nome, String? cpf}) {
    return UserInfo(nome: nome ?? this.nome, cpf: cpf ?? this.cpf);
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'nome': nome, 'cpf': cpf};
  }

  factory UserInfo.fromMap(Map<String, dynamic> map) {
    return UserInfo(nome: map['nome'] as String, cpf: map['cpf'] as String);
  }

  String toJson() => json.encode(toMap());

  factory UserInfo.fromJson(String source) =>
      UserInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserInfo(nome: $nome, cpf: $cpf)';

  @override
  bool operator ==(covariant UserInfo other) {
    if (identical(this, other)) return true;

    return other.nome == nome && other.cpf == cpf;
  }

  @override
  int get hashCode => nome.hashCode ^ cpf.hashCode;
}
