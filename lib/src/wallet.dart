class Wallet {
  final int? balance;
  final String? money;

  const Wallet({
    this.balance,
    this.money,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
        balance: json["balance"] ?? 0,
        money: json["money"] ?? '',
      );

  Map<String, dynamic> toJson() => {"balance": balance, "money": money};
}
