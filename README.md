# Dart TimeoutException Catching Issue

This repository demonstrates a subtle issue related to catching `TimeoutException` in Dart.  The provided code throws a general `Exception`, which is caught before the specific `TimeoutException` catch block has a chance to execute.  This can lead to unexpected behavior if you rely on specific exception handling for timeouts.

The `bug.dart` file showcases the problematic code. The `bugSolution.dart` file provides a corrected version.