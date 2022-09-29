class User {
  String username;
  String email;
  String refferalID;
  int otp;
  int pin;
  int count;
  int earnings;
  int refferals;
  double walletBalance;
  double miningBalance;

  User(
      {required this.email,
      required this.otp,
      required this.username,
      required this.pin,
      required this.refferals,
      required this.walletBalance,
      required this.count,
      required this.refferalID,
      required this.earnings,
      required this.miningBalance});
}
