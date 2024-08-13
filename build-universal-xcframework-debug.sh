# --------------
# Create build folder
# This is called in the Run Script 'Create XCFramework' in target XCFramework
# --------------

mkdir -p build

# --------------
# Delete existing archives & framworks in build directory
# --------------

rm -rf build/*


# ios devices
xcodebuild archive \
    -workspace OBUSDK.xcworkspace \
    -scheme OBUSDK \
    -destination "generic/platform=iOS" \
    -archivePath "./build/ios.xcarchive" \
    -sdk iphoneos \
    -configuration ReleaseDev \
    SKIP_INSTALL=NO
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# ios simulator
xcodebuild archive \
    -workspace OBUSDK.xcworkspace \
    -scheme OBUSDK \
    -destination "generic/platform=iOS Simulator" \
    -archivePath "./build/ios_sim.xcarchive" \
    -sdk iphonesimulator \
    -configuration ReleaseDev \
    SKIP_INSTALL=NO
    BUILD_LIBRARY_FOR_DISTRIBUTION=YES
# --------------
# XC Framework
# --------------
xcodebuild -create-xcframework \
    -framework "./build/ios.xcarchive/Products/Library/Frameworks/OBUSDK.framework" \
    -framework "./build/ios_sim.xcarchive/Products/Library/Frameworks/OBUSDK.framework" \
    -output "./build/OBUSDK.xcframework"
   # -ldflags "-Wl,-ObjC"


## ios devices
#xcodebuild archive \
#    -scheme OBUSDK \
#    -archivePath "./build/ios.xcarchive" \
#    -sdk iphoneos \
#    -configuration ReleaseDev \
#    SKIP_INSTALL=NO
#    BUILD_LIBRARY_FOR_DISTRIBUTION=YES
## ios simulator
#xcodebuild archive \
#    -scheme OBUSDK \
#    -archivePath "./build/ios_sim.xcarchive" \
#    -sdk iphonesimulator \
#    -configuration ReleaseDev \
#    SKIP_INSTALL=NOO
#    BUILD_LIBRARY_FOR_DISTRIBUTION=YES
## --------------
## XC Framework
## --------------
#xcodebuild -create-xcframework \
#    -framework "./build/ios.xcarchive/Products/Library/Frameworks/OBUSDK.framework" \
#    -framework "./build/ios_sim.xcarchive/Products/Library/Frameworks/OBUSDK.framework" \
#    -output "./build/OBUSDK.xcframework"


#$ xcodebuild archive -workspace Lottie.xcworkspace -scheme "Lottie (iOS)" -destination generic/platform=iOS -archivePath "archives/Lottie_iOS" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
#$ xcodebuild archive -workspace Lottie.xcworkspace -scheme "Lottie (iOS)" -destination "generic/platform=iOS Simulator" -archivePath "archives/Lottie_iOS_Simulator" SKIP_INSTALL=NO BUILD_LIBRARY_FOR_DISTRIBUTION=YES
#$ xcodebuild -create-xcframework -framework archives/Lottie_iOS.xcarchive/Products/Library/Frameworks/Lottie.framework -framework archives/Lottie_iOS_Simulator.xcarchive/Products/Library/Frameworks/Lottie.framework -output xcframeworks/Lottie.xcframework
