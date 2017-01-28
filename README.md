# haskell-cabal-starter
A boilerplate for a haskell-cabal library with tests included

## Getting Started
To develop a haskell package utilising cabal, you should first create a sandbox for dev environment.

```
# Create `cabal.sandbox.config` and actual sandbox in `.cabal-sandbox/`
cabal sandbox init
# Compile and build the application with tests included. Build can be found in `dist/` directory.
cabal install --enable-tests
# Configure the library
cabal configure
# Run the tests
cabal test
```

After you successfully completed the steps, you should see something like this:

```
Test suite tests: RUNNING...

Validate haqify function
  haqify is supposed to prefix Haq! to things
Falsely validate haqify function
  haqify is not supposed to prefix Haq! to things FAILED [1]

Failures:

  tests/HSpecTests.hs:13:
  1) Falsely validate haqify function haqify is not supposed to prefix Haq! to things
       expected: "NonHaq! me"
        but got: "Haq! me"

Randomized with seed 2130054027

Finished in 0.0097 seconds
2 examples, 1 failure
```

Now you can start with fixing the wrong spec. Happy hacking!
