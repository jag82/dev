##Testing

It's important to write tests to make sure everything works and also as documentation. I suggest writing tests before writing code in order to design what you will be writing and to ensure that all tests actually fail (negative control).

We will use TAP (test anything protocol). It is a standardized format for outputting test results that has been around a long time. The main benefit of a known format is that we can chain many tools from different authors together.

For example:
```
	node tests/*.js | faucet | tap-notify
```


TODO specific test runners (`tape` for running in browser), reporters, notifiers

