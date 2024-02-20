# GizoSDK-iOS

To use GIZO SDK library, follow these steps:

Step 1:
- Choose "File"->"Add Packages"
- Search package https://github.com/artificient-ai/gizo-ios-sdk-alpha
- Press Add Package
- Add GizoSDK-iOS to the project

Step 2:
- We need to implement settings for using mapbox
- Add mapbox private key in your mac [mapbox guides](https://docs.mapbox.com/ios/maps/guides/install/#configure-credentials)
- Add `MBXAccessToken` is required to be added to "Target"->"Info" and insert mapbox public key in description

Step 3:
The following permissions are required to be added to "Target"->"Info":
- Privacy - Motion Usage Description
- Privacy - Camera Usage Description
- Privacy - Location Usage Description
- Privacy - Location Always Usage Description
- Privacy - Location When In Use Usage Description

Step 4: 
- Create `license` folder in root project
- Add 'license.json' and 'publickey.pem' to licence folder
