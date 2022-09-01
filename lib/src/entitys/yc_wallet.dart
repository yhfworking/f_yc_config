class YcWallet {
  final int? balance;
  final String? money;

  const YcWallet({
    this.balance,
    this.money,
  });

  factory YcWallet.fromJson(Map<String, dynamic> json) => YcWallet(
        balance: json["balance"] ?? 0,
        money: json["money"] ?? '',
      );

  Map<String, dynamic> toJson() => {"balance": balance, "money": money};
}
