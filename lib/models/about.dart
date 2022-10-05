class About {
  final String body;

  About({required this.body});

  About.fromJson(Map<String, dynamic> json) : body = json['body'];

  Map<String, dynamic> toJson() => {'body': body};
}
