# palestine_sms_misr (unofficial)

## Part of [PalestineDevelopers](https://github.com/PalestineDevelopers)

Lightweight SMS Misr gateway implementation in dart (unofficial).

[![License](https://img.shields.io/github/license/PalestineDevelopers/sms_misr)](https://github.com/PalestineDevelopers)
[![Pub](https://img.shields.io/badge/SMS%20Misr-pub-blue)](https://pub.dev/packages/palestine_sms_misr)
[![Example](https://img.shields.io/badge/Example-Ex-success)](https://pub.dev/packages/palestine_sms_misr/example)

[![Fork](https://img.shields.io/github/forks/PalestineDevelopers/sms_misr?style=social)](https://github.com/PalestineDevelopers/sms_misr)
[![Star](https://img.shields.io/github/stars/PalestineDevelopers/sms_misr?style=social)](https://github.com/PalestineDevelopers/sms_misr)
[![Watch](https://img.shields.io/github/watchers/PalestineDevelopers/sms_misr?style=social)](https://github.com/PalestineDevelopers/sms_misr)

---

## Table Of Contents

* [Features](#features)
* [Getting started](#getting-started)
* [Usage](#usage)

---

## Features

* SMS Misr Implementation for both
  * Message API
  * OTP API

---

## Getting started

To start, import package

```dart
import 'package:palestine_sms_misr/palestine_sms_misr.dart';
```

---

## Usage

Create an instance.

```dart
PalSMSMisr palSMSMisr = PalSMSMisr(
    userName: 'xxxxxxxx',
    password: 'xxxxxxxx',
    senderName: 'xxxxx',
    language: '2', // 1, 2
    otpToken: 'xxxxxx-xxxx-xxx-xxx-xxxxxx',
    otpSignature: 'xxxxxxxx',
);
```

Messages API

```dart
await palSMSMisr.sendMessage(
    phoneNumbers: 'xxxxxxxxxxx,xxxxxxxxxxx', // Egyptian Phone Number
    message: 'Dev Test',
);
```

OTP API

```dart
await palSMSMisr.sendOTP(
    phoneNumber: 'xxxxxxxxxxx', // Egyptian Phone Number
);
```
