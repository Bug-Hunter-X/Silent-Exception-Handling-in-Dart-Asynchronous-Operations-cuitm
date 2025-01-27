# Silent Exception Handling in Dart

This repository demonstrates a common error in Dart asynchronous programming: silently catching exceptions. The `bug.dart` file shows code that catches exceptions but does not rethrow them or provide sufficient information for debugging. The solution (`bugSolution.dart`) shows how to properly handle these exceptions.

## Problem
The original code uses a `try-catch` block, but the `catch` block only prints the exception to the console. This means that if an error occurs, the program continues to run, but the error is not propagated to the caller. This makes debugging extremely hard, as the error isn't reported up the stack. 

## Solution
The solution file addresses this by either rethrowing the exception or at least providing better logging to aid debugging, allowing the developer to better identify the root cause of the error.