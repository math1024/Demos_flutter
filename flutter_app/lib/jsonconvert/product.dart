class Product {
  int id;
  String name;
  List<Image> images;

  Product({this.id, this.name, this.images});

  factory Product.fromJson(Map<String, dynamic> parsedJson) {
    var list = parsedJson['images'] as List;
    print(list.runtimeType);
    List<Image> imagesList = list.map((i) => Image.fromJson(i)).toList();

    return Product(
        id: parsedJson['id'], name: parsedJson['name'], images: imagesList);
  }

  @override
  String toString() {
    return 'Product{id: $id, name: $name, images: $images}';
  }
}

class Image {
  int imageId;
  String imageName;

  Image({this.imageId, this.imageName});

  factory Image.fromJson(Map<String, dynamic> parsedJson) {
    return Image(imageId: parsedJson['id'], imageName: parsedJson['imageName']);
  }

  @override
  String toString() {
    return 'Image{imageId: $imageId}';
  }
}
