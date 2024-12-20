# Ruby Type Coercion Bug
This repository demonstrates an unexpected type coercion issue in Ruby related to instance variable assignments.  The bug arises from assigning a string value to an instance variable that was initially assigned an integer value. 

## Bug Description
The `bug.rb` file contains a simple class `MyClass` with a getter and setter for an instance variable `@value`. Initially, an integer is assigned to `@value`. Later, a string is assigned, resulting in the instance variable accepting the string without any error. This can lead to runtime errors if the code later relies on the type of `@value` being an integer.

## Solution
The `bugSolution.rb` demonstrates a possible solution by implementing stricter type checking or using a more robust approach to handle different data types.