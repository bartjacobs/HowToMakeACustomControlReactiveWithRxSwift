### [How to Make a Custom Control Reactive With RxSwift](https://cocoacasts.com/how-to-make-a-custom-control-reactive-with-rxswift/)

#### Author: Bart Jacobs

Earlier this week, I showed you [how to create a custom control using a bitmask](https://cocoacasts.com/how-to-create-a-custom-control-using-a-bitmask/). But it's time to take it one step further by adding RxSwift to the mix. In this tutorial, we make the custom control we built reactive using RxSwift.

## Cloning the Repository

Head over to [GitHub](https://github.com/bartjacobs/HowToCreateACustomControlUsingABitmask) and clone the project if you'd like to follow along. Open Terminal and execute the following command.

```language-bash
git clone git@github.com:bartjacobs/HowToCreateACustomControlUsingABitmask.git
```

## Adding Dependencies

You can add RxSwift one of several ways. I prefer CocoaPods. Navigate to the root of the project and execute the following command to set up CocoaPods for the project.

```language-bash
pod init
```

Open the project's **Podfile** in your favorite text editor and add RxSwift as a dependency.

```language-ruby
target 'Schedules' do
  use_frameworks!
  platform :ios, '10.0'

  pod 'RxSwift'
end
```

From the command line, execute `pod repo update` to make sure the specs repositories on your machine are up to date. To install the dependencies, execute `pod install`.

```language-bash
pod repo update
pod install
```

This tutorial uses version **3.4.1** of RxSwift. Open the workspace CocoaPods has created for you and trigger a build by choosing **Build** from the **Product** menu. You shouldn't see any errors or warnings.

**Read this article on [Cocoacasts](https://cocoacasts.com/how-to-make-a-custom-control-reactive-with-rxswift/)**.
