# Umpire v0.2.3

Umpire is a resource management library that allows the discovery, provision,
and management of memory on next-generation architectures.

Umpire uses CMake and BLT to handle builds. Since BLT is included as a
submodule, first make sure you run:

    $ git submodule init && git submodule update

Then, make sure that you have a modern compiler loaded, and the configuration is as
simple as:

    $ mkdir build && cd build
    $ cmake

CMake will provide output about which compiler is being used. Once CMake has
completed, Umpire can be built with Make:

    $ make

For more advanced configuration you can use standard CMake variables.

# Documentation

Both user and code documentation is available.

# Authors

Thanks to all of Umpire's
[contributors](https://github.com/LLNL/Umpire/graphs/contributors).

Umpire was created by David Beckingsale (david@llnl.gov).

# Release

Umpire is released under an MIT license. For more details, please see the
[LICENSE](./LICENSE) and [RELEASE](./RELEASE) files.

`LLNL-CODE-747640`
`OCEC-18-031`
