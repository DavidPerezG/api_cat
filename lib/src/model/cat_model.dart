class CatModel {
  String url;

  CatModel({
    this.url,
  });

  factory CatModel.fromJson(Map<String, dynamic> cat) {
    return CatModel(
      url: cat['url'],
    );
  }
}
