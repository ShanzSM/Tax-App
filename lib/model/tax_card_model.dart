class TaxCardModel {
  final String name;
  final double amount;
  final String iconPath; // Use asset icons instead of IconData

  TaxCardModel({
    required this.name,
    required this.amount,
    required this.iconPath,
  });
}
