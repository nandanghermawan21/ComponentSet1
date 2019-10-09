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

insert repositori ini kedalam file yaml project

```yaml
  component_set1:
    git:
      url: https://github.com/nandanghermawan21/component_set1.git
```

buka dan ubah file android/build.gradle seperti ini

```
 dependencies {
        classpath 'com.android.tools.build:gradle:3.3.0'
        classpath 'com.google.gms:google-services:4.2.0'
    }
```

buka dan ubah file android/gradle.properties seperti ini

```
org.gradle.jvmargs=-Xmx1536M
android.enableJetifier=true
android.useAndroidX=true
```

naikan versi compileSdkVersion ke 28 pada file android/app/src/main/build.gradle seperti ini

```
android {
    compileSdkVersion 28
...
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

naikan versi build tool minimal versi 3.3.0 pada  file android/build.gradle

```java
 dependencies {
        classpath 'com.android.tools.build:gradle:3.3.0'
 }
```



## Test komponent

untuk melakukan test clone repository ini dan jalankan example project yang ada didalamnya
