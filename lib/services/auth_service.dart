import 'package:travel_eddie_k/models/user.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:travel_eddie_k/notifier/auth_notifier.dart';

// //signing in
// signIn(User user, AuthNotifier authNotifier) async {
//   AuthResult authResult = await FirebaseAuth.instance
//       .signInWithEmailAndPassword(email: user.email, password: user.password)
//       .catchError((error) => print(error.code));

//   if (authResult != null) {
//     FirebaseUser firebaseUser = authResult.user;

//     if (firebaseUser != null) {
//       print("Log In : $firebaseUser");
//       authNotifier.setUser(firebaseUser);
//     }
//   }
// }


signIn(User user, AuthNotifier authNotifier) async{
  try{
  AuthResult authResult = await FirebaseAuth.instance.signInWithEmailAndPassword(email: user.email, password: user.password);
  
}
on AuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
}
//signing up
signup(User user, AuthNotifier authNotifier) async {
  AuthResult authResult = await FirebaseAuth.instance
      .createUserWithEmailAndPassword(
          email: user.email, password: user.password)
      .catchError((error) => print(error.code));

  if (authResult != null) {
    UserUpdateInfo updateInfo = UserUpdateInfo();
    FirebaseUser firebaseUser = authResult.user;

    if (firebaseUser != null) {
      await firebaseUser.updateProfile(updateInfo);

      await firebaseUser.reload();

      print("Sign up: $firebaseUser");

      FirebaseUser currentUser = await FirebaseAuth.instance.currentUser();
      authNotifier.setUser(currentUser);
    }
  }
}

//initializing current user
initializeCurrentUser(AuthNotifier authNotifier) async {
  FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();

  if (firebaseUser != null) {
    print(firebaseUser);
    authNotifier.setUser(firebaseUser);
  }
}
}