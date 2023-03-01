import 'dart:io';

void main() {
  List<double> expenses = [];
  double total = 0.0;
  print(
      "Nhập các khoản chi của bạn (một số tiền trên mỗi dòng, để trống để kết thúc):");
  while (true) {
    String input = stdin.readLineSync()!.trim();
    if (input.isEmpty) {
      break;
    }
    double? expense = double.tryParse(input);
    if (expense == null) {
      print("Đầu vào không hợp lệ, vui lòng nhập một số.");
    } else {
      expenses.add(expense);
    }
  }
  for (double expense in expenses) {
    total += expense;
  }
  print("Tổng chi phí: \$${total.toStringAsFixed(2)}");
}
