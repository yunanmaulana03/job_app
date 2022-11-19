class CategoryModel {
  // data model
  String? id;
  String? name;
  String? imageUrl;
  int? createdAt;
  int? updatedAt;

  // constructor
  CategoryModel({
    this.id,
    this.name,
    this.imageUrl,
    this.createdAt,
    this.updatedAt,
  });

  // constructor JSON
  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    imageUrl = json['imageUrl'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  // function method kembalian dari json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}
