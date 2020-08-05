#! /bin/bash

if [[ $CONFIGURATION == *"Emulator"* ]]; then
    cp $PRODUCT_NAME/Firebase/emulator/GoogleService-Info.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"Development"* ]]; then
    cp $PRODUCT_NAME/Firebase/development/GoogleService-Info.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"Staging"* ]]; then
    cp $PRODUCT_NAME/Firebase/staging/GoogleService-Info.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"Production"* ]]; then
    cp $PRODUCT_NAME/Firebase/production/GoogleService-Info.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == "Release" ]]; then
    echo "Might be CI archive"
else
    echo "configuration didn't match to Development, Staging or Production"
    echo $CONFIGURATION
    exit 1
fi