class CellData {
  final Operation operation;
  final String ticker;
  final DateTime date;
  final double amount;
  final double cost;
  CellData({
    required this.amount,
    required this.cost,
    required this.date,
    required this.operation,
    required this.ticker,
  });
}

enum Operation { sell, buy }

final List<CellData> data = [
  CellData(
      amount: 10,
      cost: 189.82,
      date: DateTime(2022, 1, 24),
      operation: Operation.sell,
      ticker: 'DOT'),
  CellData(
      amount: 1,
      cost: 44978.25,
      date: DateTime(2022, 1, 24),
      operation: Operation.buy,
      ticker: 'BTC'),
];
