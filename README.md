# obusdk-ios-sample

This repository provides a sample App to assist you in integrating the obusdk and its APIs into your applications. 

The Extended OBU Library (EXTOL) enables your applications to connect to the On-Board Unit (OBU) in a user's car to receive Electronic Road Pricing (ERP) and Traffic related messages. It provides a set of APIs that you can use in your app to get data from the OBU. The SDK requires Bluetooth to make a connection, and on iOS, it is using Bluetooth Low Energy (BLE).

The SDK is available as an XCFramework, designed to be used for both simulators and devices. 


## Requirements
- iOS 13.0+
- Xcode 13+ 
- Swift 5 or Objective-C

The OBU SDK is available as a [CocoaPods](https://cocoapods.org/) pod. Cocoapods in an open source dependency manager for Swift and Objective-C projects.

## Getting Started
To get started with the SDK, you will need an SDK Account key, which can be obtained by registering at [DataMall](https://datamall.lta.gov.sg/content/datamall/en/request-for-api.html). After submitting the form, you will receive two emails:

i. The first email will contain the DataMall API Access Key, which you need to access the DataMall APIs.
ii. The second email will contain the SDK Account Key for the SDK."

To integrate the OBU SDK, you will need to install [cocoapods](https://cocoapods.org/)

```
sudo gem install cocoapods
```

Add the pod to your app pod file:

```
platform :ios, '13.0'
use_frameworks!

pod 'extol'
```
Then, run the following command:

```
pod install
```

Once the pod is installed, the sdk is ready to use in your app. 

## Developer guide 
Developer guide for iOS and Android is avaialble at https://datamall.lta.gov.sg/content/datamall/en.html

## Changelog 
All changes are documented in CHANGELOG.md.

## License
The SDK is distributed under the terms of use described in the License file in this repository.
