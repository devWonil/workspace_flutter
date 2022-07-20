class Album {
  int userId;
  int id;
  String title;

  Album(this.userId, this.id, this.title);

  // factory 타입 싱글톤패턴 : 한번 생성된 객체를 재활용하기위해 사용한다.
  // 매개변수 map을 사용하여 dart object Album Object 변환하는 코드입니다.
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(json['userId'], json['id'], json['title']);
  }
}
