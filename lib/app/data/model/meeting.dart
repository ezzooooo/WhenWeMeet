class Meeting {
  final int id;
  final String title;

  Meeting(this.id, this.title);

  Meeting.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
      };

  @override
  String toString() {
    return '$id / $title';
  }
}
