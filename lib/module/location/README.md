module ini berfungsi untuk melakukan penandaan lokasi. langkah untuk instalasinya adalah 

#### untuk android

buka manifest.xml pada folder android/app/main/src

tambahkan kode berikut pada manifest section

```xml
<uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
```

tambahkan kode berikut pada aplication section

```xml
<meta-data android:name="com.google.android.maps.v2.API_KEY" android:value="api_key"/>
        <meta-data android:name="com.google.android.gms.version" android:value="@integer/google_play_services_version"/>

```



#### untuk ios

buka info.pls di folder ios/runner/ dan tambahkan kode berikut

```plist
		<key>io.flutter.embedded_views_preview</key>
		<string>YES</string>
		<key>NSLocationWhenInUseUsageDescription</key>
		<string>This app needs access to location when open.</string>
```

buka file Appdelegete.m di folder ios/runner/ dan tambahkan kode berikut

```java
#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
  //tambahkan ini//
#import "GoogleMaps/GoogleMaps.h"
  //-----------//

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
   //tambahkan ini//
  [GMSServices provideAPIKey:@"api_key"];
  //-------------//
  [GeneratedPluginRegistrant registerWithRegistry:self];
  return [super application:application 	didFinishLaunchingWithOptions:launchOptions];
}

@end

```

