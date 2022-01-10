import 'dart:developer' as developer;
import 'dart:math';

import 'package:http/http.dart' as http;

class PalSMSMisr {
  /// * Configurations
  final String senderName;
  final String language;
  final String userName;
  final String password;
  final String otpToken;
  final String otpSignature;

  /// * Base URLs for the services
  /// ! DO NOT CHANGE THE KEY UNDER ANY CIRCUMSTANCES AT ALL
  /// ! CHANGE THE VALUE WILL CAUSE CHECK ERRORS
  static const baseURLMessage = 'https://smsmisr.com/api/webapi/';
  static const baseURLOTP = 'https://smsmisr.com/api/vSMS/';

  /// * Constructor
  PalSMSMisr({
    required this.senderName,
    required this.language,
    required this.userName,
    required this.password,
    required this.otpToken,
    required this.otpSignature,
  }) {
    developer.log(
      '--PalSMSMisr-- Instance created',
      name: 'SMS',
    );
  }

  ///---
  /// sendMessage to phone list separated by comma
  ///---
  /// phoneNumbers: list of phone numbers separated by comma, example: '0541234567,0541234568'
  /// message: message to send
  Future<bool> sendMessage({
    required String phoneNumbers,
    required String message,
  }) async {
    final http.Response response = await http.post(
      Uri.parse(
        '$baseURLMessage?username=$userName&password=$password&language=$language&sender=$senderName&mobile=$phoneNumbers&message=$message',
      ),
    );

    if (response.statusCode == 200 && response.body.contains('"1901"')) {
      return true;
    } else {
      developer.log(
        '--PalSMSMisr-- Error Sending Message: ${response.statusCode} - ${response.body}',
        name: 'SMS',
      );

      return false;
    }
  }

  ///---
  /// sendOTP to phone number
  ///---
  /// phoneNumber: phone number to send OTP
  /// code: OTP code to send, example: '123456', or null to generate random code
  Future<String?> sendOTP({
    required String phoneNumber,
    String? code,
  }) async {
    final String _code = code ?? generateRandomNumbers();

    final http.Response response = await http.post(
      Uri.parse(
        '$baseURLOTP?username=$userName&password=$password&msignature=$otpSignature&token=$otpToken&sender=$senderName&mobile=$phoneNumber&code=$_code',
      ),
    );

    if (response.statusCode == 200 && response.body.contains('"SMSID"')) {
      return code;
    } else {
      developer.log(
        '--PalSMSMisr-- Error Sending OTP Code: ${response.statusCode} - ${response.body}',
        name: 'SMS',
      );

      return null;
    }
  }

  String generateRandomNumbers([int length = 5]) {
    final random = Random();
    final numbers = List<int>.generate(length, (i) => random.nextInt(10));

    return numbers.join();
  }
}
