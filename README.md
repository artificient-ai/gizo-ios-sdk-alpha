# GizoSDK-iOS

To use GIZO SDK library, follow these steps:
- Open your iOS project in Xcode
- Choose "File"->"Add Packages"，Add GizoSDK-iOS to the project

![imagealt](https://github.com/artificient-ai/gizo-ios-sdk-alpha/blob/main/Doc/img001.png "图片")

- We need to implement settings for  because we use it in our library, therefore, MBXAccessToken are required to be added to "Target"->"Info":
![imagealt](https://github.com/artificient-ai/gizo-ios-sdk-alpha/blob/main/Doc/img002.png "图片")

The following permissions are required by the iOS SDK:
* NSLocationUsageDescription
* NSLocationWhenInUseUsageDescription
* NSLocationAlwaysUsageDescription
* NSMotionUsageDescription
* NSCameraUsageDescription

![imagealt](https://github.com/artificient-ai/gizo-ios-sdk-alpha/blob/main/Doc/img003.png "图片")

- Add 'license.json' and 'publickey.pem' to Xcode project
![imagealt](https://github.com/artificient-ai/gizo-ios-sdk-alpha/blob/main/Doc/img004.png "图片")
