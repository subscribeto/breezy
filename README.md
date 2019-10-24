# breezy
So this is the demo application for our iOS team to learn the new SwiftUI framework Apple introduced in iOS 13. This framework brough a whole new and improved way to build user interfaces using a declrative syntax. This guide will walk you through implementing an interface for the *breezy* demo application but also has nice links and helpful
reminders for using SwiftUI. Also, you will be able to view required coding style and documentation.

## Mission
Your mission is to design and develop a one page application displaying all relavant information provided from the API.

### Requirements
* Documentation must be written for every `func` and `struct`. Follow the documentation style layed out lower in this document.
* You should have a clean `git` history. Do not work on many files at the same time and each commit should only contain files relavant to each other for a small subset of items.
* Follow the coding style layed out lower in this document.
* This should be a single page application. Do not navigate to new pages or popups. You may use any views you would like within the page though (ex. `HStack`, `List`, `ScrollView`).
* Do not change any code other than your own files in the `breezy/Components` directory or the struct `WeatherView`'s `body` property.

## Coding Style

### `struct` vs. `class`
Use a struct over a class whenever possible.

### `let` vs. `var`
Use `let` over `var` whenever possible.

### Type Inference
**ALWAYS** specify the type of a variable when you are creating it.

### Everything Else...
For everything else, follow the guide [here](https://github.com/linkedin/swift-style-guide) that is used by airbnb following all conventions they provide unless it directly contradicts to anything specified above.


## Documentation Style

### Struct
* Version: current version
* Since: first version it was added
* Author: Your github username with an `@` symbol.
```swift
/**
A short description of what the struct is for.

A long description of the struct using markdown (optional).

- Author: @elijahjcobb
- Since: v0.1.0
- Version: v0.1.0
*/
```

### Function
See more at [NSHipster](https://nshipster.com/swift-documentation/).
```swift
/**
 A short description of the function.

 A long description of the function using markdown (optional).

 - Parameter x: A description of x.
 - Parameter y: A description of y.

 - Throws: `ErrorType` A description of when the error is thrown.

 - Returns: A description of what is returned.
 */
 ```

## Application Info
The application is set up in a similar way to how SubscribeTo will be setup. For now, all you have to worry about is the files in the `breezy/Components` directory. To begin with there is just one file `WeatherView.swift`.

### Structure
As you will see, in `breezy/Components/WeatherView.swift` there is a `struct` called `WeatherView`. Do not remove this `struct` as it is the basis for the entire app. However within the `body` property you can do **WHATAVER** you want. 

### Interfacing with API
You can also see in the same `struct` there is a property called `weather` which is of type `WeatherReport`. This property contains **ALL** values from the [DarkSky](https://darksky.net/dev/docs) API for a basic weather request at Houghton, MI. The `weather` object will update every five minutes over the network and whenever changes are made to it your interface will instantly be re-drawn. So all you need to know is that when you use values from it, you are good!

### Components
You can make as many components as you would like just make sure any files you make are in the correct directory.

### Weather Object
View the file located at `breezy/breezy/API/Structures.swift` to see all available properties to be used. You don't need to use every value as that would look bad on a single view app. However, use as much as you can while still maintaining good design.

## Design Help
You can read up in Apple's design guidelines [here](https://developer.apple.com/design/human-interface-guidelines/ios/).
