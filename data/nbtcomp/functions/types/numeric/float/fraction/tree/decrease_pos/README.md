# Computing the fractional part of a number
Computing the fractional part of a number is done by using a binary structure with powers of two.
Each file in this folder checks if the current position stored in `#nbtcomp.types.numeric.float.y_pos` is in a certain range.
The file that is first chosen is determined by the function tree in the [`scoreboard`](https://github.com/PeerHeer/nbt-comparisons/tree/master/data/nbtcomp/functions/types/numeric/float/fraction/tree/scoreboard) folder.

## Example
- `1024.mcfunction` checks if the position is between `1024` and `2047`.
- If it is, the function subtracts `1024` from the value stored in `#nbtcomp.types.numeric.float.y_pos`. The local position of the function is then edited by adding (if the original number was negative) or subtracting `1024` from the local position by using `positioned ~ ~1024 ~` or `positioned ~ ~-1024 ~` respectively. This avoids
- If the resulting number in `#nbtcomp.types.numeric.float.y_pos` is not zero, the function forwards the value in `#nbtcomp.types.numeric.float.y_pos` to `512.mcfunction`, which does the same steps for the number `512`.
- If the resulting number in `#nbtcomp.types.numeric.float.y_pos` is zero, the traversal of the functions stops, avoiding unnecessary checks.

## Advantages
Using this structure has one main advantage: it is faster (in most cases) than repeatedly subtracting 1 from the `#nbtcomp.types.numeric.float.y_pos` score and the local position until both are 0. For example, the number `123456789` requires only 27 steps, while using a naive method would require 123456789 steps.

In short, using powers of two ensures that all numbers are reduced to 0 in at most 30 steps.

## Acknowledgements
Special thanks to [Maxaxik](https://github.com/maxaxik) for coming up with the idea to store the number in the Y position of an entity and then reducing it to 0 to get the fractional part of a number.
