# component_set1

Ini merupakan libarary yang berisi kumpulan dart class yang berguna untuk mempercepat pembangunan aplikasi mobile berbasis flutter, didalamnnya terdapat empat jenis class yaitu

1. component

   adalah class yang berisi function yang return-nya adalah widget yang dapat langsung dimasukan kedalam widget tree

2. util

   adalah class yang returnnya berupa object baik baik itu yang sincronous maupun asyincronous dan dalam util. util dapat digunakan untuk mengisi properties dari widget. misal colorUtil untuk mengisi sarna, networkUtil untuk mengambil data dari api server

3. Modul

   adalah suatu kumpulan class yang tergabung dan saling terhubung untuk menghasilkan suatu feature tertentu. untuk menyisipkan module didalam widget cukup memanggiil presenser nya misal location.presenter() untuk memanggil module location picker, dengan terlebih dahulu meng-import file main.dart dari folder modul terlebih dahulu serta memberinya nama alias seperti kode berikut

   ```dart
   import "../../module/location/main.dart" as location;
     
   class View extends PresenterState {
     Widget builds(){
       return Scaffold(
         appBar: AppBar(
           title: Text("Location Picker"),
         ),
         body: location.Presenter(),
       );
     }
   }
   ```

## Getting Started

insert repositori ini kedalah file yaml project

```yaml
  component_set1:
    git:
      url: https://github.com/nandanghermawan21/component_set1.git
```


buka dan ubah file ios/runner/podfile menjadi seperti ini dimulai dari baris 35

```java
target 'Runner' do
  use_frameworks!  # required by Geolocator
  # Prepare symlinks folder. We use symlinks to avoid having Podfile.lock
  # referring to absolute paths on developers' machines.
  system('rm -rf .symlinks')
  system('mkdir -p .symlinks/plugins')

  # Flutter Pods
  generated_xcode_build_settings = parse_KV_file('./Flutter/Generated.xcconfig')
  if generated_xcode_build_settings.empty?
    puts "Generated.xcconfig must exist. If you're running pod install manually, make sure flutter pub get is executed first."
  end
  generated_xcode_build_settings.map { |p|
    if p[:name] == 'FLUTTER_FRAMEWORK_DIR'
      symlink = File.join('.symlinks', 'flutter')
      File.symlink(File.dirname(p[:path]), symlink)
      pod 'Flutter', :path => File.join(symlink, File.basename(p[:path]))
    end
  }
```

## Test komponent

untuk melakukan test clone repository ini dan jalankan example project yang ada didalamnya

## Dokumentasi Modul Khusus

ada beberapa module yang memerlukan penanganan khusus saat akan diadaptasi kedalam project berikut daftarnya

### 1. location

module ini berfungsi untuk melakukan penandaan locasi. lakah untuk instalasinya alah 

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

