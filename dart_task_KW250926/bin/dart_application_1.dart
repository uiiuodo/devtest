main() {
  //문제1번

  print("*필수 문제 1번");
  print(" ");

  int score = 84;

  if (score >= 90) {
    print("   이 학생의 점수는 [$score점] 이며, 등급은 [A등급]입니다!");
  } else if (score >= 80) {
    print("   이 학생의 점수는 [$score점] 이며, 등급은 [B등급]입니다!");
  } else {
    print("   이 학생의 점수는 [$score점] 이며, 등급은 [C등급]입니다!");
  }
  print(" ");

  //문제2번
  print("*필수 문제 2번");
  print(" ");
  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  // 갯수 세기
  Map<String, int> countMap = {};

  for (var item in cart) {
    countMap[item] = (countMap[item] ?? 0) + 1;
  }

  // 가격표
  Map<String, int> price = {"티셔츠": 10000, "바지": 8000, "모자": 4000};

  // 총금액 계산
  int total = 0;
  for (var lee in countMap.entries) {
    String item = lee.key; // 물건 이름
    int count = lee.value; // 갯수
    int unitPrice = price[item]!; // 단가
    int itemTotal = unitPrice * count;

    total += itemTotal;
    print("   $item: ${unitPrice}원 × ${count}개 = ${itemTotal}원");
  }

  print("   총 금액: $total 원");
  print(" ");
  print("   장바구니에 $total원 어치를 담으셨네요!");

  int discount = total - (total * 10 ~/ 100);
  int dc = total * 10 ~/ 100;

  if (total > 20000) {
    print("   할인 금액 : $dc원");
    print("   최종적으로 결제하실 금액은 $discount입니다!");
  }
}
