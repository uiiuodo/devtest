필수 문제 1번
//IF문 활용이 필요하다고 판단하여 IF문 양식만 확인 후 바로 작성

필수 문제 2번
1차
Map<String, int> price = {"티셔츠" : 10000, "바지" : 8000, "모자" : 4000};

    int sum =(price["티셔츠"]!*2) + price["바지"]! + (price["모자"]!*2);

    print("장바구니에 $sum원 어치를 담으셨네요!");

    //오류가 뜨길래 확인해보니 Map에서 값을 꺼냈을 때 기본 타입이 int? (nullable int) 이라서 생긴 문제라고 함. 해결방법은 !를 붙여서 non-null로 변환 필요
    //여기까지는 생각하고 적을 수 있었으나 이 문제에서 요구하는 건 리스트에서 상품의 갸수를 추리고 해당 상품의 금액을 개수와 곱하는 방식이 필요한데 그 부분은 내 생각만으로 구현해 내기 어려워서 AI의 도움을 받음

2차
List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

    1.갯수 세기
     Map<String, int> countMap = {};

     for (var item in cart) {
     countMap[item] = (countMap[item] ?? 0) + 1;
     }
     //{}로 초기화해 두는 게 null 에러 방지차원에서 안전하다고 함
     //for (var item in cart)는 카트에 있는걸 아이템에 한개씩 넣겠다는 말임
     //countMap[item] ?? 0는 왼쪽 값이 널이면 0으로 취급
     //첫 티셔츠일 때 → (null ?? 0) = 0, 두 번째 티셔츠일 때 → (1 ?? 0) = 1

    2. 가격표
     Map<String, int> price = {"티셔츠": 10000, "바지": 8000, "모자": 4000};

    3. 총금액 계산
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
     //10% = total * 10 ~/ 100

     if (total > 20000) {
     print("   할인 금액 : $dc원");
     print("   최종적으로 결제하실 금액은 $discount입니다!");
     }
