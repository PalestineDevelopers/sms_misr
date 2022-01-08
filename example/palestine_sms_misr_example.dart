import 'package:palestine_sms_misr/palestine_sms_misr.dart';

void main() async {
  PalSMSMisr palSMSMisr = PalSMSMisr(
    userName: 'xxxxxxxx',
    password: 'xxxxxxxx',
    senderName: 'xxxxx',
    language: '2', // 1, 2
    otpToken: 'xxxxxx-xxxx-xxx-xxx-xxxxxx',
    otpSignature: 'xxxxxxxx',
  );

  await palSMSMisr.sendMessage(
    phoneNumbers: 'xxxxxxxxxxx,xxxxxxxxxxx', // Egyptian Phone Number
    message: 'Dev Test',
  );

  await palSMSMisr.sendOTP(
    phoneNumber: 'xxxxxxxxxxx', // Egyptian Phone Number
  );
}
