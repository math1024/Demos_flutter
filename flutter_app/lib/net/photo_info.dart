/*
"albumId": 1,
   "id": 1,
    "title": "accusamus beatae ad facilis cum similique qui sunt",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl": "https://via.placeholder.com/150/92c952"
*/

class PhotosList {
  final List<PhotoModel> photos;

  PhotosList({
    this.photos,
  });

  factory PhotosList.fromJson(List<dynamic> parsedJson) {
    List<PhotoModel> photos = new List<PhotoModel>();
    photos = parsedJson.map((i) => PhotoModel.fromJson(i)).toList();
    return PhotosList(photos: photos);
  }
}

class PhotoModel {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  PhotoModel({this.albumId, this.id, this.title, this.url, this.thumbnailUrl});

  factory PhotoModel.fromJson(Map<String, dynamic> json) {
    return new PhotoModel(
        albumId: json['albumId'],
        id: json['id'],
        title: json['title'],
        url: json['url'],
        thumbnailUrl: json['thumbnailUrl']);
  }
}
