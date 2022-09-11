class ShoppingItemModel {
  final String name; // 이름
  final int quantity; // 갯수
  final bool hasBought; // 구매했는지
  final bool isSpicy; // 매운지

  ShoppingItemModel({
    required this.name,
    required this.quantity,
    required this.hasBought,
    required this.isSpicy,
  });

  ShoppingItemModel copyWith({
    String? name, // 이름
    int? quantity, // 갯수
    bool? hasBought, // 구매했는지
    bool? isSpicy, // 매운지
  }) {
    return ShoppingItemModel(
      // ?? -> 입력값이 null이면 뒤의 값을 출력
      name: name ?? this.name,
      quantity: quantity ?? this.quantity,
      hasBought: hasBought ?? this.hasBought,
      isSpicy: isSpicy ?? this.isSpicy,
    );
  }
}
