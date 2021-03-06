# IntValue
Property Wrapper

## Overview

IntValue is a simple @propertyWrapper for object.
- [x] It can be implemented in object.
- [x] Look examples in code.

## Simple Example 
### Code Implementation
First:
Need to create struct uses @IntValue
``` swift
struct Object: Decodable {
    @IntValue var id: Int
    @IntValue var value1: Int
    @IntValue var value2: Int
}
```
JSON For Decode data
``` swift
let json = """
    {
        "id": null,
        "value1": 0,
        "value2": 343
    }
    """
```
``` swift
let data = json.data(using: .utf8)!
let object = try! JSONDecoder().decode(Object.self, from: data)

print("Id is", object.id)
print("Value1 is", object.value1)
print("Value2 is", object.value2)
```
Result in console:
``` swift
Id is 0
Value1 is 0
Value2 is 343
```

## Contributed
This is an open source project, so feel free to contribute.
