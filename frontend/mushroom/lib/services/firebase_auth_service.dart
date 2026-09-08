import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

/// Kullanıcıya gösterilebilir hata mesajı taşır.
class AuthException implements Exception {
  const AuthException(this.message);

  final String message;

  @override
  String toString() => message;
}

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

  Future<UserCredential?> signInWithGoogle() async {
    try {
      await _googleSignIn.initialize(serverClientId: "289991566269-tvjkfsroe2liaaaf44drggkn6d548qdv.apps.googleusercontent.com");
      final account = await _googleSignIn.authenticate();
      final GoogleSignInAuthentication googleAuth = account.authentication;
      final credential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken,
      );
      return await _auth.signInWithCredential(credential);
    } on GoogleSignInException catch(e) {
      print('Google Sign-In Error: $e');
      return null;
    } on FirebaseAuthException catch(e) {
      print('Firebase Auth Error: $e');
      return null;
    } catch (e) {
      print('General Error: $e');
      return null;
    }
  }

  Future<UserCredential> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      return await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      throw AuthException(_hataMesaji(e.code));
    }
  }

  Future<UserCredential> registerWithEmail({
    required String email,
    required String password,
    String? displayName,
  }) async {
    try {
      final credential = await _auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      final ad = displayName?.trim();
      if (ad != null && ad.isNotEmpty) {
        await credential.user?.updateDisplayName(ad);
        await credential.user?.reload();
      }
      return credential;
    } on FirebaseAuthException catch (e) {
      throw AuthException(_hataMesaji(e.code));
    }
  }

  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email.trim());
    } on FirebaseAuthException catch (e) {
      throw AuthException(_hataMesaji(e.code));
    }
  }

  String _hataMesaji(String code) {
    switch (code) {
      case 'invalid-email':
        return 'Geçersiz e-posta adresi.';
      case 'user-disabled':
        return 'Bu hesap devre dışı bırakılmış.';
      case 'user-not-found':
      case 'wrong-password':
      case 'invalid-credential':
        return 'E-posta veya şifre hatalı.';
      case 'email-already-in-use':
        return 'Bu e-posta adresi zaten kayıtlı.';
      case 'weak-password':
        return 'Şifre en az 6 karakter olmalı.';
      case 'operation-not-allowed':
        return 'E-posta ile giriş Firebase Console\'da etkin değil.';
      case 'too-many-requests':
        return 'Çok fazla deneme yapıldı, biraz sonra tekrar dene.';
      case 'network-request-failed':
        return 'İnternet bağlantısı kurulamadı.';
      default:
        return 'Bir hata oluştu ($code).';
    }
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }

  User? get currentUser => _auth.currentUser;
}
