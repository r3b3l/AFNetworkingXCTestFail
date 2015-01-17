# AFNetworkingXCTestFail
Under some conditions an EXC_BAD_ACCESS occurs in AFHTTPRequestSerializer -init int this code block:
```
for (NSString *keyPath in AFHTTPRequestSerializerObservedKeyPaths()) {
    if ([self respondsToSelector:NSSelectorFromString(keyPath)]) {
        [self addObserver:self forKeyPath:keyPath options:NSKeyValueObservingOptionNew context:AFHTTPRequestSerializerObserverContext];
    }
}
```
the line addObserver: forKeyPath is generating the error.

It happens when:
- keyPath = allowsCellularAccess
- when unit testing using XCTest 
- both on the simulator and on an actual device.
- AFNetworking version 2.4.0, 2.4.1, 2.5.0

It is somehow related to the initialization of a second instance of AFHTTPRequestSerializer.
