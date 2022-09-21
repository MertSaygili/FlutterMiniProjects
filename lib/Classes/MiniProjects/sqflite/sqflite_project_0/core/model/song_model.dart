class SongModel {
  int? id;
  final String songName;
  final String singer;
  final int publishYear;
  final bool hasCopyright;

  SongModel({
    this.id,
    required this.songName,
    required this.singer,
    required this.publishYear,
    required this.hasCopyright,
  });

  // to save data in database we need to convert it to map
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id?': id,
      'songName': songName,
      'singer': singer,
      'publishYear': publishYear,
      'hasCopyright': hasCopyright ? 1 : 0,
    };
  }

  @override
  String toString() {
    return 'Song($id, $songName, $singer, $publishYear, $hasCopyright)';
  }
}
