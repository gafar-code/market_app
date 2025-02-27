class UserModel {
  final String username;
  final String avatar;
  final String description;
  final bool isTop;

  UserModel({
    required this.username,
    required this.avatar,
    required this.description,
    this.isTop = false,
  });
}
