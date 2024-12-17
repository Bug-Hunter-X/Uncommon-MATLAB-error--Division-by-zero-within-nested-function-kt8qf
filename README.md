# Uncommon MATLAB Error: Division by Zero and Negative Input Handling

This repository demonstrates an uncommon error in MATLAB that can be difficult to identify.  The error stems from a combination of a division by zero and improper handling of negative input values within nested functions.

## Description:

The `myFunction` calls `someCalculation`.  If `myFunction` receives a negative input, an error is correctly thrown.  However, `someCalculation` has a subtle bug: it doesn't explicitly handle the case where x equals zero, leading to a division by zero error if the input to `myFunction` is indirectly zero.

## How to Reproduce:

1.  Clone this repository.
2.  Run `bug.m` with an input of 0.  You will observe a runtime error related to division by zero.
3.  Review the code in `bug.m` to locate the error.  Notice the nested function structure and potential for unexpected behavior.

## Solution:

The `bugSolution.m` file provides a corrected version that includes robust error handling. The solution addresses both the potential division by zero and the need to validate inputs thoroughly.