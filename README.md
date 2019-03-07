# VTNilReplace

[![CI Status](https://img.shields.io/travis/vipul8989/VTNilReplace.svg?style=flat)](https://travis-ci.org/vipul8989/VTNilReplace)
[![Version](https://img.shields.io/cocoapods/v/VTNilReplace.svg?style=flat)](https://cocoapods.org/pods/VTNilReplace)
[![License](https://img.shields.io/cocoapods/l/VTNilReplace.svg?style=flat)](https://cocoapods.org/pods/VTNilReplace)
[![Platform](https://img.shields.io/cocoapods/p/VTNilReplace.svg?style=flat)](https://cocoapods.org/pods/VTNilReplace)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

VTNilReplace is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'VTNilReplace'
```

## Author

vipul8989, jaykishan.patel1463@gmail.com

### Getting Started:

        Just call by VTNullReplacer()

####For removing NSNull values from a dictionary.

        NullReplace().dictionaryOfFilteredBy(dict: yourDictionary)

####For removing NSNull values from an array.

        NullReplace().arrayOfFilteredBy(arr: yourArray)

####Dictionary Example:

        let myDictionary : NSMutableDictionary = NSMutableDictionary()      // let a dictionary
        myDictionary.setValue(123, forKey: "firstKey")                      // add integer value
        myDictionary.setValue(NSNull(), forKey: "secondKey")                // add null value
        myDictionary.setValue([String](), forKey: "thirdKey")               // add array of string
        myDictionary.setValue("one", forKey: "fourthKey")                   // add string value
        myDictionary.setValue([String : AnyObject](), forKey: "fifthKey")   // add a dictionary

        let filteredDict : NSDictionary = NullReplace().dictionaryOfFilteredBy(dict: myDictionary) // call replacer
        print(filteredDict)
        
        input :
        {
            firstKey = 123;
            secondKey = "<null>";
            thirdKey = (
            );
            fourthKey = "one";
            fifthKey = {
            };
        }

        output :
        {
            firstKey = "123";
            secondKey = "";
            thirdKey = (
            );
            fourthKey = "one";
            fifthKey = {
            };
        }



## License

VTNilReplace is available under the MIT license. See the LICENSE file for more info.
