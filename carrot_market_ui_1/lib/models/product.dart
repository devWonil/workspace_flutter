class Product {
  final String title;
  final String author;
  final String address;
  final String urlToImage;
  final String publishedAt;
  final String price;
  final int heartCount;
  final int commentsCount;

  Product(
      {required this.title,
      required this.author,
      required this.address,
      required this.urlToImage,
      required this.publishedAt,
      required this.price,
      required this.heartCount,
      required this.commentsCount});
}

final String _urlPrefix =
    'https://github.com/flutter-coder/ui_images/blob/master/carrot_product_7.jpg?raw=true';

List<Product> productList = [
  Product(
      title: "니트 조끼",
      author: "",
      address: "좌동",
      urlToImage: _urlPrefix,
      publishedAt: "2시간 전",
      price: "35,000원",
      heartCount: 8,
      commentsCount: 3),
  Product(
      title: "먼나라 이웃나라 12",
      author: "",
      address: "중동",
      urlToImage: _urlPrefix,
      publishedAt: "3시간 전",
      price: "18,000원",
      heartCount: 3,
      commentsCount: 1),
  Product(
      title: "캐나다구스 패딩조끼",
      author: "",
      address: "우동",
      urlToImage: _urlPrefix,
      publishedAt: "1일 전",
      price: "15,000원",
      heartCount: 0,
      commentsCount: 12),
  Product(
      title: "유럽 여행",
      author: "",
      address: "우동",
      urlToImage: _urlPrefix,
      publishedAt: "3일 전",
      price: "15,000원",
      heartCount: 4,
      commentsCount: 11),
  Product(
      title: "가죽 파우치",
      author: "",
      address: "우동",
      urlToImage: _urlPrefix,
      publishedAt: "1주일 전",
      price: "95,000원",
      heartCount: 7,
      commentsCount: 4),
  Product(
      title: "니트 조끼",
      author: "",
      address: "좌동",
      urlToImage: _urlPrefix,
      publishedAt: "2시간 전",
      price: "35,000원",
      heartCount: 8,
      commentsCount: 3),
  Product(
      title: "노트북",
      author: "",
      address: "좌동",
      urlToImage: _urlPrefix,
      publishedAt: "2시간 전",
      price: "150,000원",
      heartCount: 8,
      commentsCount: 3),
];
