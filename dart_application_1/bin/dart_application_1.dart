main() {
  //문제1번

  print("필수 문제 1번");

  int score = 84;

  if (score >= 90) {
    print("이 학생의 점수는 [$score점] 이며, 등급은 [A등급]입니다!");
  } else if (score >= 80) {
    print("이 학생의 점수는 [$score점] 이며, 등급은 [B등급]입니다!");
  } else {
    print("이 학생의 점수는 [$score점] 이며, 등급은 [C등급]입니다!");
  }

  //문제2번 - 생각1
  Map<String, int> price = {"티셔츠": 10000, "바지": 8000, "모자": 4000};

  int sum = (price["티셔츠"]! * 2) + price["바지"]! + (price["모자"]! * 2);

  print("장바구니에 $sum원 어치를 담으셨네요!");
}
