class Inbox {
  final String title;
  final String date;
  final String body;

  final bool isRead;

  Inbox(
      {required this.title,
      required this.date,
      required this.body,
      required this.isRead});

  Inbox.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        date = json['date'],
        body = json['body'],
        isRead = json['isRead'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'date': date,
        'body': body,
        'isRead': isRead,
      };
}
