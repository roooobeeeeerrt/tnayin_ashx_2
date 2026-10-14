abstract class Payment {
  double calculateFee(double amount);
}

class CardPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0.02;
  }
}

class CashPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return 0;
  }
}

class CryptoPayment extends Payment {
  @override
  double calculateFee(double amount) {
    return amount * 0.05;
  }
}

double calculateTotal(Payment payment, double amount) {
  return amount + payment.calculateFee(amount);
}

void main() {
  print(calculateTotal(CardPayment(), 50));
  print(calculateTotal(CashPayment(), 50));
  print(calculateTotal(CryptoPayment(), 50));
}