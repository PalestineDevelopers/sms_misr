# palestine_sms_misr (unofficial)

## Part of [PalestineDevelopers](https://github.com/PalestineDevelopers)

Lightweight SMS Misr gateway implementation in dart (unofficial).

[![License](https://img.shields.io/github/license/PalestineDevelopers/sms_misr?style=for-the-badge)](https://github.com/PalestineDevelopers)
[![Pub](https://img.shields.io/badge/Palestine%20SMS%20Misr-pub-blue?style=for-the-badge)](https://pub.dev/packages/palestine_sms_misr)
[![Example](https://img.shields.io/badge/Example-Ex-success?style=for-the-badge)](https://pub.dev/packages/palestine_sms_misr/example)

[![PUB](https://img.shields.io/pub/v/palestine_sms_misr.svg?style=for-the-badge)](https://pub.dev/packages/palestine_sms_misr)
[![GitHub release](https://img.shields.io/github/v/release/PalestineDevelopers/sms_misr?style=for-the-badge)](https://github.com/PalestineDevelopers/sms_misr/releases)
[![GitHub stars](https://img.shields.io/github/stars/PalestineDevelopers/sms_misr?style=for-the-badge)](https://github.com/PalestineDevelopers/sms_misr)
[![GitHub forks](https://img.shields.io/github/forks/PalestineDevelopers/sms_misr?style=for-the-badge)](https://github.com/PalestineDevelopers/sms_misr)

[![Build Status](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Factions-badge.atrox.dev%2FPalestineDevelopers%2Fsms_misr%2Fbadge%3Fref%3Dmain&style=for-the-badge)](https://actions-badge.atrox.dev/PalestineDevelopers/sms_misr/goto?ref=main)

---

## Table Of Contents

* [Features](#features)
* [Getting started](#getting-started)
* [Usage](#usage)
* [Contributors](#contributors)

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
    code: '12xxx', // optional
);
```

## Contributors

![Contributors](https://contrib.rocks/image?repo=palestinedevelopers/sms_misr)
