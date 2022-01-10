import 'package:palestine_sms_misr/palestine_sms_misr.dart';
import 'package:test/test.dart';

void main() {
  final PalSMSMisr palSMSMisr = PalSMSMisr(
    senderName: 'xxxx',
    language: '2',
    userName: 'user',
    password: 'password',
    otpToken: 'token12',
    otpSignature: 'signature',
  );

  test('if can send message and OTP', () async {
    expect(
      await palSMSMisr.sendMessage(
        phoneNumbers: '01004104004',
        message: 'test message',
      ),
      isFalse,
    );
    expect(
      (await palSMSMisr.sendOTP(
        phoneNumber: '01004104004',
        code: '12012',
      ))
          .runtimeType,
      anyOf([String, Null]),
    );
    expect(
      (await palSMSMisr.sendOTP(
        phoneNumber: '01004104004',
      ))
          .runtimeType,
      anyOf([String, Null]),
    );
  });
}
