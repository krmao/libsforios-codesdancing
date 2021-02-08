# CodesDancing

[![CI Status](https://img.shields.io/travis/767709667@qq.com/CodesDancing.svg?style=flat)](https://travis-ci.org/767709667@qq.com/CodesDancing)
[![Version](https://img.shields.io/cocoapods/v/CodesDancing.svg?style=flat)](https://cocoapods.org/pods/CodesDancing)
[![License](https://img.shields.io/cocoapods/l/CodesDancing.svg?style=flat)](https://cocoapods.org/pods/CodesDancing)
[![Platform](https://img.shields.io/cocoapods/p/CodesDancing.svg?style=flat)](https://cocoapods.org/pods/CodesDancing)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

CodesDancing is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
source 'https://github.com/krmao/libsforios.git'
pod 'CodesDancing', '~>0.0.1'
```

## Author

767709667@qq.com

## License

CodesDancing is available under the MIT license. See the LICENSE file for more info.

## Create steps
1. pod lib create CodesDancing
2. set libraries = 'z','bz2.1.0' # can't include 'lib' prefix and '.xxx' suffix, such as 'libz.tbd', 'libbz2.1.0.tbd' 
3. git push and add git tag to version

```ruby
git tag -a 0.0.1 -m 'version 0.0.1'
git push origin --tags
```

4. pod lib lint --allow-warnings &&  pod repo push krmao CodesDancing.podspec --allow-warnings
5. how to use

```ruby
source 'https://cdn.cocoapods.org/'
source 'https://github.com/krmao/libsforios.git'
pod 'CodesDancing', '~>0.0.1'
```
