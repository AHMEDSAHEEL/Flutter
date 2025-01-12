class Users {
  final String email;
  final Name name;
  final Picture picture;
  Users({required this.email, required this.name,required this.picture});

  String get fullName {
    return '${name.title} ${name.first} ${name.last}';
  }
}

class Name {
  final String? title;
  final String? first;
  final String? last;

  Name({this.title, this.first, this.last});
}

class Picture {
  final String? large;
  final String? medium;
  final String thumbnail;

  Picture({this.large, this.medium,required this.thumbnail});
}
