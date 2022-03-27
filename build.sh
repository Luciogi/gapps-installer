#!/bin/sh
mkdir tmp/
unzip FlameGApps-11.0-basic-arm64-*.zip tar_core/Core.tar.xz -d tmp      
tar -xf tmp/tar_core/Core.tar.xz src/etc/ src/framework/com.google.android.maps.jar src/priv-app/PrebuiltGmsCore/ src/priv-app/Phonesky/ src/priv-app/GoogleServicesFramework/
mv src system
zip -r  gapps-installer.zip META-INF/ system/ LICENSE module.prop    
rm tmp -r
