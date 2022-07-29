import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class StockappFirebaseUser {
  StockappFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

StockappFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<StockappFirebaseUser> stockappFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<StockappFirebaseUser>(
            (user) => currentUser = StockappFirebaseUser(user));
