# Livery SDK for iOS - Swift Package Manager

This repository contains the Swift Package Manager manifest file for the Livery SDK.

While these manifest file is public, the actual packages are private. You should
request credentials from Livery, then place them in your `~/.netrc` as
follows: (create if necessary)

```
machine sdk-ios-binaries.livery.live
  login YOUR_USERNAME
  password YOUR_PASSWORD
```

## Installation

Swift Package Manager is distributed with Xcode. To add the Livery SDK to your iOS project, do as follows:
1. Open your project in Xcode and select File > Add Packages
2. Enter the URL for this repo (https://github.com/liveryvideo/livery-sdk-ios-spm) into the search bar and click "Add Package"
3. Then on the Dependency Rule menu select the "Exact Version" - `2.0.0` or "Branch" - `main` to have the latest release
