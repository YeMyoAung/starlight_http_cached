<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Starlight Http Cached

The easiest way to store data such as http response,String,int,double,bool,map,list.

## Features

☑️ Set Cached <br>
☑️ Get Cached <br>
☑️ Delete Cached <br>
☑️ Check Cached <br>

![Screen Shots](https://user-images.githubusercontent.com/26484667/143765253-94609c5d-a1a6-49ed-a6ca-bbc4a226d281.png)

## Installation

Add starlight_http_cached as dependency to your pubspec file.

```dart
starlight_http_cached: 
    git:
      url: https://github.com/YeMyoAung/starlight_http_cached.git
```

## Usage

First of all you need to import our package.

```dart
import 'package:starlight_http_cached/starlight_http_cached.dart';
```

## Initializing StarlightHttpCached

To initialize StarlightHttpCached, call the instance method on the StarlightHttpCached class:

```dart
 await StarlightHttpCached.instance;
```

## Set Cached


```dart
import 'package:flutter/material.dart';
import 'package:starlight_http_cached/starlight_http_cached.dart';

Future<void> main() async {
  ///important
  WidgetsFlutterBinding.ensureInitialized();

  ///important
  await StarlightHttpCached.instance;

  ///setcached
  StarlightHttpCached.setCached(
    name: 'helloworld',
    data: {
      "Ye Myo Aung": "Ye Myo Aung",
    },
  );
}

```

## Get Cached

```dart
import 'package:flutter/material.dart';
import 'package:starlight_http_cached/starlight_http_cached.dart';

Future<void> main() async {
  ///important
  WidgetsFlutterBinding.ensureInitialized();

  ///important
  await StarlightHttpCached.instance;

  ///get cached
  print(
    StarlightHttpCached.getCached(
      name: 'helloworld',
    ),
  );
}

```

## Delete Cached

```dart
import 'package:flutter/material.dart';
import 'package:starlight_http_cached/starlight_http_cached.dart';

Future<void> main() async {
  ///important
  WidgetsFlutterBinding.ensureInitialized();

  ///important
  await StarlightHttpCached.instance;

  ///delete cached
  StarlightHttpCached.deleteCached(
    name: 'helloworld',
  );
}

```

## Check Cached

```dart
import 'package:flutter/material.dart';
import 'package:starlight_http_cached/starlight_http_cached.dart';

Future<void> main() async {
  ///important
  WidgetsFlutterBinding.ensureInitialized();

  ///important
  await StarlightHttpCached.instance;

  ///check cached
  print(
    StarlightHttpCached.hasCached(name: 'helloworld'),
  );
}

```

## Contact Us

[Starlight Studio](https://www.facebook.com/starlightstudio.of/)
