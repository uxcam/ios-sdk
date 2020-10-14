This folder and at least one Swift or Objective-C source file is needed to work around limitations in Swift Package Manager binary targets - namely that you can't add linkerSettings to binary targets.

See https://forums.swift.org/t/swiftpm-binary-target-with-sub-dependencies/40197/7 for where I got the trick from.