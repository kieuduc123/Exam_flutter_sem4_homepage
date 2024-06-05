class PlaceModel {
  int? id;
  String? name;
  double? rate;
  String? imageUrl;

  PlaceModel({this.id, this.name, this.rate, this.imageUrl});

  PlaceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    rate = json['rate'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['rate'] = this.rate;
    data['imageUrl'] = this.imageUrl;
    return data;
  }
}
