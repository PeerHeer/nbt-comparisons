# NBT comparisons
## Description
A datapack that can compare two NBT values.  

This datapack can compare any two values of any **numeric** data type. This includes `byte`, `short`, `int`, `long`, `float` and `double`. If the value does not have a numeric data type (e.g. `list` or `compound`), the lengths of these values are compared. Generic data types which include `string`, `list`, `compound`, `byte_array`, `int_array` and `long_array` are compared using their length.  
The type of comparison done is automatically determined by the type of the values, which are obtained using a modified version of the [NBT type identifier](https://github.com/PeerHeer/nbt-type-identifier), which has a cache size of 2 and uses a hard-coded function list of types for better performance.  

This datapack uses `forceload`, which means that OP level 3 or higher is required to install it. When first loading the datapack, a popup will prompt all players to install it by clicking on said popup. As mentioned previously, this requires OP level 3 or higher to work.

## Compatibility info
- Minecraft version: `19w45b` and up
- Namespace: `nbtcomp`
- Scorespace: `nbtcomp`
- Known incompatibilities: `none`

## How to use
1. Use the `nbtcomp:input` storage to input the data that you want to compare. There are two fields: `DataL` and `DataR`. Which value you put in which field will determine the result of the comparison (see [Function output](#Function_output) below).
2. Call the function `nbtcomp:compare` using the command `function nbtcomp:compare`.
3. The result of the function will be stored in the `#nbtcomp.compare.result` fake player using the objective `nbtcomp.var` (see [Function output](#Function_output) below). In short, the function can be read using something like `scoreboard players get #nbtcomp.compare.result nbtcomp.var`.

<a name="Function_output"/>  

## Function output
The function output is determined by the values in the `DataL` and `DataR` fields in the `nbtcomp:input` storage.
- If the value in `DataL` is equal to the value in `DataR`, the result is `0`.
- If the value in `DataL` is smaller than the value in `DataR`, the result is `-1`.
- If the value in `DataL` is bigger than the valu ein `DataR`, the result is `1`.
- If `DataL` and `DataR` cannot be compared, the result is `2`. This is the case when one of the data types is numeric an the other one is generic.
In essence, the result value "points to" the `Data` field that contains the smaller value.

## Supported values
Supported values are restricted by the minimum and maximum values that the corresponding data types support. In the case of this datapack, `doubles` and `floats` are limited by the maximum and minimum values of a `long`. This means that a floating-point number that exceeds the capabilities of a 32-bit number can still be compared (although with limited precision).  
Comparison of floating-point numbers can be done up to 9 decimal places, with a precision of at least 15 (`double`) or 6 (`float`) significant figures.

## How it works
### Numeric comparison
#### Representation
In this datapack, each number is represented by an integral part and a fractional part.

##### Integral part
The integral part is split into the higher 32 bits and the lower 32 bits of the number.
- `Integers`, `shorts` and `bytes` always have a higher integral part of 0 (positive) or -1 (negative). The lower integral part is equal to the value of the data.
- The integral parts of a `long` are determined by splitting the value into a lower and higher integral part by first storing the value inside of a field that can only hold integers. For this datapack, the `Color` tag inside an `area_effect_cloud` is used. This yields the lower integral part. The higher integral part is obtained by scaling the entire number with `0.00000000023283064365386962890625`.
- The integral parts of a `float` or `double` are obtained by first converting the values to a `long` and then splitting it. The values are converted by storing it in a field that can only hold longs. In this case, the `OwnerUUIDMost` tag inside an `area_effect_cloud` is used. After converting the value to a `long`, the value is split into a higher and lower integral part in the same way as mentioned above.

##### Fractional part
The fractional part contains up to 9 decimal places.
- `Integers`, `shorts`, `bytes` and `longs` always have a fractional part of 0.
- `floats` and `doubles` have a fractional part that contains 9 decimal places. The value is put inside the Y position of an `area_effect_cloud`. This number is then reduced to `0.<fraction>` by repeatedly subtracting (when number is positive) or adding (when number is negative) a value from/to the position. For more information, see [this README](https://github.com/PeerHeer/nbt-comparisons/blob/master/data/nbtcomp/functions/types/numeric/float/fraction/tree/decrease_pos/README.md).

#### Comparison
1. The higher integral parts are compared. If these are not equal, the comparison yields a result immediately. Otherwise, go to step 2.
2. The lower integral parts are compared. If these are not equal, the comparison yields a result. Otherwise, go to step 3.
3. If at least one of the numbers is a `float` or `double`, the fractional parts are compared and the final result is returned.

### Generic comparison
#### Representation
The generic data types are represented by their length, which is computed by using `execute store result ... data get ...`.

#### Comparison
The lengths of the data types are compared and the result is returned.

## Acknowledgements
Special thanks to the members of the [MinecraftCommands discord server](http://discord.gg/QAFXFtZ) and expecially to [Maxaxik](https://github.com/maxaxik) and [vdvman1](https://github.com/vdvman1) who helped me in creating the ideas for this datapack.
