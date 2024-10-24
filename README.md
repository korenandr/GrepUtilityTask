# The TASK
> Implement a grep-like utility in C++ that does a recursive search of a given query in all files in a directory.
<hr>

# High-level requirements:

    You should use only the C++ standard library.
    You should use CMake as a build system.
    There is no strict limitation on the version of the C++ standard. Feel free to use any version you need (including the latest ones).
    The utility accepts a query to search and a directory path and does a recursive search in a given directory.
    The utility outputs results to the console.
    The utility should work reasonably fast (e.g. utilize all cores during the search).
    The solution should contain a written design document (README) and also include tests. You may use test frameworks if you want.
    Please also provide instructions on how to build and test your project.

All of this scripts you have to launch from the root directory.

# How to build:
```
./scripts/build.sh
```

# How to launch unit tests:
```
./scripts/run.sh
```

# How to use (example):
> This script will mount ./test/ut_dir inside of docker container in /app directory.
```
./scripts/run.sh <query> <directory>
./scripts/run.sh test /app/simple
```

# How to clean resources:
```
./scripts/clean.sh
```