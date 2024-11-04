// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract IntegerHandling {
    // Integer Ranges:
    // Signed:
    // int8:  -128 to +127
    // int16: -32768 to +32767
    // Unsigned:
    // uint8:  0 to 255
    // uint16: 0 to 65535
    // General formula:
    // int: -2^(n-1) to 2^(n-1) - 1
    // uint: 0 to 2^n - 1

    // Example of maximum valid value for int8
    int8 public smallInt = 127;  // -128 to 127 is the valid range for int8

    // Typecasting and Overflow/Underflow Example:
    uint256 public largeValue = 255;
    uint8 public smallValue = uint8(largeValue);  // Typecasting largeValue to uint8 is safe here

    // Potential Overflow Example:
    uint256 public overflowValue = 256;
    uint8 public castedValue = uint8(overflowValue);  // Overflows to 0, causing loss of data
    
    // Explanation: Casting overflowValue (256) to uint8 results in an overflow.
    // This is because the uint8 range is 0-255. 256 wraps around to 0, 
    // as it exceeds the maximum value of uint8. This could be catastrophic in a real application.
}