# taste-time-provider

Re-usable TASTE component providing on-board elapsed time, developed as a part of "Model-Based Execution Platform for Space Applications" project (contract 4000146882/24/NL/KK) financed by the European Space Agency.

It requires a TASTE runtime, such as TASTE Linux C++ Runtime or TASTE SAMV71 RTEMS Runtime, that provides Hal component exposing timing functions. The component itself is located in the **component/TimeProvider** directory. A demonstration project is provided in **test-project/taste-time-provider** directory. The component needs an user provided bridge between the component and the rest of TASTE system to properly handle ASN.1 data types. Basic tests can be executed by switching to the **test-project/taste-time-provider** directory and invoking:
```
make test
``` 
Example output is:
```
make -C work run
make[1]: Entering directory '/home/taste/workspace/taste-time-provider/test-project/taste-time-provider/work'
make -j -C build -f Makefile.taste run
make[2]: Entering directory '/home/taste/workspace/taste-time-provider/test-project/taste-time-provider/work/build'
cd ../binaries && ./demo || :
[TASTE] Initialization completed for function testfunction
[TASTE] Initialization completed for function TimeProvider
Reported time: 500000050
Reported status: 3
TEST PASS
make[2]: Leaving directory '/home/taste/workspace/taste-time-provider/test-project/taste-time-provider/work/build'
make[1]: Leaving directory '/home/taste/workspace/taste-time-provider/test-project/taste-time-provider/work'
```
In order to verify that the component works on SAMV71 target, please use GDB and inspect the values manually.