import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DiveusatFirebaseUser {
  DiveusatFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DiveusatFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DiveusatFirebaseUser> diveusatFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DiveusatFirebaseUser>(
      (user) {
        currentUser = DiveusatFirebaseUser(user);
        return currentUser!;
      },
    );
