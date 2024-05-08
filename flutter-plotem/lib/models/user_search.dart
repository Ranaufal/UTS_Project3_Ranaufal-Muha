// ignore_for_file: non_constant_identifier_names, camel_case_types

class UserSearch {
  final String username;
  final String nama;

  const UserSearch({
    required this.username,
    required this.nama,
  });

  factory UserSearch.fromJson(Map<String, dynamic> json) => UserSearch(
        username: json["username"],
        nama: json["nama"],
      );
}
