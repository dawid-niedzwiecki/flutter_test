class Product {
  String name = '';
  double amount = 0;
  String unit = '';
  DateTime expirationDate = new DateTime(2000, 1, 1, 23, 59);
  Product(this.name, this.amount, this.unit, DateTime expirationDate) {
    this.expirationDate = new DateTime(
        expirationDate.year, expirationDate.month, expirationDate.day, 23, 59);
  }
}
