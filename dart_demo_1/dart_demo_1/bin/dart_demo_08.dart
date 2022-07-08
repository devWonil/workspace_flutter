import 'dart:math';

void main(List<String> arguments) {
  Set<int> lotto = {};

  // Random 클래스 사용
  Random random = Random();
  for(int i = 0; i < 6; i++){
    lotto.add(random.nextInt(45) + 1);
  }
  
  print(lotto);

  List<int> lottoList = lotto.toList();
  lottoList.sort();
  print(lottoList);
}

