import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'dart:convert';

final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: ['email', 'profile'],
);

final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

Future<bool> verifyDocuhelperToken(token) async {
  final response = await http.post(
    Uri.parse('http://localhost:8081/auth/verify/docuhelper'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({'token': token}),
  );

  if (response.statusCode != 204) {
  // if (response.statusCode != 200) {
    return false;
  }

  return true;
}

Future<String?> getJwt() async => await _secureStorage.read(key: 'jwt');

Future<void> signInWithGoogle() async {
  try {
    // 1) 구글 로그인 UI 호출
    final account = await _googleSignIn.signIn();
    if (account == null) {
      // 사용자가 취소
      return;
    }

    // 2) ID 토큰 획득
    final auth = await account.authentication;
    final idToken = auth.idToken;
    if (idToken == null) {
      throw Exception('ID 토큰을 가져오지 못했습니다.');
    }

    // 3) 백엔드에 ID 토큰 전송
    final response = await http.post(
      Uri.parse('http://localhost:8081/auth/verify/google'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'token': idToken}),
    );

    if (response.statusCode != 200) {
      throw Exception('서버 로그인 실패: ${response.statusCode}');
    }

    // 4) 서버가 내려준 JWT 파싱
    final body = jsonDecode(response.body);
    final jwt = body['token'] as String;

    // 5) JWT 안전 저장
    await _secureStorage.write(key: 'jwt', value: jwt);
    print('로그인 성공, JWT 저장 완료');
  } catch (e) {
    print('Google Sign-In 에러: $e');
    rethrow;
  }
}

Future<void> signOut() async {
  // 구글 세션 종료
  await _googleSignIn.signOut();
  // 저장된 JWT 삭제
  await _secureStorage.delete(key: 'jwt');
  print('로그아웃 완료');
}
