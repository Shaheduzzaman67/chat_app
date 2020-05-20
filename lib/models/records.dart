class Record {
  final String name;
  final String avaterUrl;
  final String photoUrl;
  final String text;

  Record.fromMap(Map<String, dynamic> map)
      : name = map["name"],
        avaterUrl = map["avaterUrl"],
        photoUrl = map["photUrl"],
        text = map["text"];
}
