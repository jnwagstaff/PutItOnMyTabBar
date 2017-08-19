# PutItOnMyTabBar 🍻
[![CI Status](http://img.shields.io/travis/jnwagstaff/PutItOnMyTabBar.svg?style=flat)](https://travis-ci.org/jnwagstaff/PutItOnMyTabBar)
[![Version](https://img.shields.io/cocoapods/v/PutItOnMyTabBar.svg?style=flat)](http://cocoapods.org/pods/PutItOnMyTabBar)
[![License](https://img.shields.io/cocoapods/l/PutItOnMyTabBar.svg?style=flat)](http://cocoapods.org/pods/PutItOnMyTabBar)
[![Platform](https://img.shields.io/cocoapods/p/PutItOnMyTabBar.svg?style=flat)](http://cocoapods.org/pods/PutItOnMyTabBar)
> A subclass of UITabBarController that is customizable 

## Examples 

### Normal 
![alt text](https://github.com/jnwagstaff/PutItOnMyTabBar/blob/master/gifs/normalGif.gif)

### Slider 
![alt text](https://github.com/jnwagstaff/PutItOnMyTabBar/blob/master/gifs/sliderGif.gif)

### Background 
![alt text](https://github.com/jnwagstaff/PutItOnMyTabBar/blob/master/gifs/backgroundGif.gif)

### Small
![alt text](https://github.com/jnwagstaff/PutItOnMyTabBar/blob/master/gifs/smallSliderGif.gif)

## Requirements

- Swift 3.0
- iOS 10.0+
- Xcode 8.0

## Installation

### CocoaPods ☕️
You can use [CocoaPods](http://cocoapods.org/) to install `PutItOnMyTabBar` by adding it to your `Podfile`:

```ruby
pod 'PutItOnMyTabBar'
```
## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

#### Usage

To get the full benefits import `PutItOnMyTabBar` in your TabBarController file:

``` swift
import PutItOnMyTabBar
```

Simply inherit 'PutItOnMyTabBar' and override the neccessary functions to customize!


```swift
class MyTabBarController: PutItOnMyTabBarController{
    // MARK: Mandatory Functions Child Class must override
    //Specifies how many tabs there are
    open func numberOfTabs() -> Int{
        return 3
    }

    //Gives TabBar all of the images it needs for when a tab is highlighted (in order of Tabs)
    open func highLightedImages() -> [UIImage] {
        return [image1, image2, image3]
    }

    //Gives TabBar all of the images it needs for when a tab is not selected (in order of Tabs) 
    open func unHighlightedImages() -> [UIImage] {
        return [image1, image2, image3]
    }

    // MARK: Optional Overrides 
    // Gives Background to Tab Bar - Default is white 
    open func backgroundColor() -> UIColor{
        return .white
    }

    // Optional Slider View that moves to selected Tab - Default is clear
    open func sliderColor() -> UIColor {
        return .clear
    }

    // Sets the height of a slider as a percentage of the total tab bar height - Default is 10%
    open func sliderHeightMultiplier() -> CGFloat {
        return 0.1
    }

    // Sets the sliders width as a percentage of each tab bars width - Default is 100%
    open func sliderWidthMultiplier() -> CGFloat {
        return 1.0
    }
}
```
# CHEERS! 🍻

Jake Wagstaff – jnwagstaff@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.
