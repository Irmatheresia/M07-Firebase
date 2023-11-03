class AuthFirebase {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  

  Future<String?> login(String email, String password){
    try {
      UserCredential authResult = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      User? user = authResult.user;
      return user?.uid;
    } catch (e){
      print (e.toString());
      return null; 
    }
  }

  Future<User?> getUser() async {
    User? user = await _firebaseAuth.currentUser;
    return user;
  }
}