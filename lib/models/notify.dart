class Notify {
  final String title;
  final String date;
  final bool isRead;

  Notify({required this.title, required this.date, required this.isRead});

  Notify.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        date = json['date'],
        isRead = json['isRead'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'date': date,
        'isRead': isRead,
      };
}
