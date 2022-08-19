Chris Morrison: chrisgm@seas.upenn.edu

The code is organized into 2 different sections. The code is to be run within a container in VS Code similar to how labs 3 and 8 were. 
The first section is for the dynamic analysis (fuzzer).

The fuzzer consists of Fuzzer.cpp, Instrument.cpp, and Utils.cpp
This is designed around the same architecture as lab 3.

Within Fuzzer.cpp, the selectMutationFn will determine which mutation to use. 
This will be determined on whether this is the first time running the fuzzer, or the StrategyState value.
If the StrategyState value is a 2, then a different mutator function will be chosen.
If it is a 1, the same mutator function will be chosen again.

The feedback function determines the StrategyState based on whether a different number of gates were passed through the previous 
round and the round before that. If nothing new is found, then the uninterestingMutants counter is increased by 1.

selectInput determines whether or not there have been too many trials where nothing has changed. uninterestingMutants will be 
greater than or equal to 50 if this is the case. If that happens then a new input will be chosen and uninterestingMutants is 
reset back to 0. The code will then proceed as though this is the first time this input has been run.

To run the code, an extremely similar process will be used as was used in Lab 3, which is shown as follows:
On the command line when in the top directory of lab3, enter the command: mkdir build && cd build
Now in the build directory, enter: cmake ..
Then: make
Then go back up one directory with: cd ..
Go into the test directory with: cd test
Now we can prepare the programs with the sanitizer. The following commands will need to be run for all 3 new tests (lab3_testA, lab3_testB, and lab3_testC)
For example, to run testA, you would enter as follows:
When in the test directory enter: clang -emit-llvm -S -fno-discard-value-names -c -o lab3_testA.ll lab3_testA.c -g
Then enter: opt -load ../build/InstrumentPass.so -Instrument -S lab3_testA.ll -o lab3_testA.instrumented.ll
Then enter: clang -o lab3_testA -L${PWD}/../build -lruntime -lm lab3_testA.instrumented.ll
Now create the directory for the outputs of this test by entering: mkdir fuzz_output_lab3_testA
Now you can run the fuzzer. The speed of your machine will determine how long you want to run the fuzzer.
Enter: timeout 30s ../build/fuzzer ./lab3_testA fuzz_input fuzz_output_lab3_testA

As the fuzzer runs it will print to the terminal. The terminal will indicate which mutator method was being used, 
as well as the mutated input itself. It will also indicate how many of the test have crashed at this point, as well as the StrategyState.
The failure and success directories underneath fuzz_output_lab3_testA will show the inputs which cause crashes and successful runs, respectively.

The 2nd part of the code is for the static analysis (LLVM Analysis Pass)
The static analysis consists of Constraint.cpp, Extractor.cpp, Utils.cpp, and analysis.dl files in the src folder.
The headers are in the include folder and the make files are in the build folder.
This is designed around the same architecture as lab 8.

The Extractor has been modified to perform a targeted static analysis of the alloca, getElementPtr, and store instructions.
The results are displayed in the terminal by errs().

The analysis.dl file used by Data Logger is not used, but is left in place to support code reuse.

To run the code, an extremely similar process will be used as was used in Lab 8, which is shown as follows:
On the command line when in the top directory of lab 8, enter the command: mkdir build && cd build
Now in the build directory, enter: cmake ..
Then: make
Then go back up one directory with: cd ..
Go into the test directory with: cd test
Now we can prepare the files to test. The following commands will need to be run for all of the tests, 
including the new tests (lab3_extension_test4_lab8, lab3_extension_test4b_lab8, and lab3_extension_test5_lab8)
For example, to run test 4, you would do as follows:
When in the test directory enter: clang -emit-llvm -S -fno-discard-value-names -c lab3_extension_test4_lab8.c
Then enter: mkdir -p lab3_extension_test4_lab8/input lab3_extension_test4_lab8/output
Then enter: ../build/constraint lab3_extension_test4_lab8.ll ./lab3_extension_test4_lab8/input

The terminal will output the following message: "ERROR: Index Out of bounds. " 
The terminal will also give the array name and the array index where the out of bounds error was found.
